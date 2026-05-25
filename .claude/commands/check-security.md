---
argument-hint: "[file/directory] [--fix] [--severity high|medium|low] [--report]"
description: "Scan code for security vulnerabilities and suggest improvements"
---

# Security Check - $ARGUMENTS

Scans your code for security vulnerabilities and verifies adherence to best practices.

If $ARGUMENTS is not provided, recently changed files are scanned automatically.

## Task Process

1. **Determine Scan Target**
   - Files/directories specified by $ARGUMENTS
   - If not specified, recently changed files are auto-detected
   - Security-related files are prioritized

2. **Security Vulnerability Scan**
   - Sensitive information exposure
   - Authentication/authorization vulnerabilities
   - Missing input validation
   - Unsafe data handling

3. **Best Practice Verification**
   - OWASP guideline compliance
   - Framework-specific security recommendations
   - Encryption and hashing methods

4. **Report Results**
   - Classify vulnerabilities by severity
   - Specify exact locations
   - Provide remediation steps

## Options

- `--fix`: Automatically resolve fixable issues
- `--severity`: Show only issues at or above the specified severity
  - `high`: Critical security risks
  - `medium`: Potential risks
  - `low`: Improvement recommendations
- `--report`: Generate a detailed report

## Scan Items

### 1. Sensitive Information Exposure
- **Hardcoded Secrets**
  - API keys, passwords, tokens
  - Database connection strings
  - Encryption keys
- **Logging Vulnerabilities**
  - Logging sensitive data
  - Stack trace exposure
- **Error Messages**
  - System information exposure
  - Debug information leakage

### 2. Authentication and Authorization
- **Session Management**
  - Session fixation attacks
  - Missing session timeout
- **Access Control**
  - Missing permission checks
  - Insufficient authentication
- **Password Policy**
  - Weak passwords allowed
  - Plaintext storage

### 3. Input Validation
- **Injection Attacks**
  - SQL injection
  - XSS (Cross-Site Scripting)
  - Command injection
- **Path Manipulation**
  - Directory traversal
  - File upload vulnerabilities

### 4. Data Protection
- **Encryption**
  - Weak encryption algorithms
  - Improper key management
- **Transport Security**
  - HTTP used (HTTPS not enforced)
  - Insecure cookies

### 5. Configuration Security
- **Default Settings**
  - Debug mode enabled
  - Unnecessary services exposed
- **CORS Configuration**
  - Overly permissive policy
- **Security Headers**
  - Missing security headers

## Usage Examples

### Scan entire project
```
/check-security
```

### Scan a specific file
```
/check-security src/auth/login.js
```

### Scan a directory and auto-fix
```
/check-security src/ --fix
```

### Show only high-severity vulnerabilities
```
/check-security --severity high
```

### Generate a detailed report
```
/check-security --report
```

## Output Format

```
🔒 Security Scan Results

Files scanned: 15
Issues found: 8 (High: 2, Medium: 4, Low: 2)

🚨 HIGH: Hardcoded API key
📍 Location: src/config.js:12
```javascript
const API_KEY = "sk-1234567890abcdef"; // vulnerable
```
✅ Fix: Use an environment variable
```javascript
const API_KEY = process.env.API_KEY;
```

⚠️ MEDIUM: SQL injection vulnerability
📍 Location: src/database/queries.js:45
```javascript
const query = `SELECT * FROM users WHERE id = ${userId}`; // vulnerable
```
✅ Fix: Use a parameterized query
```javascript
const query = 'SELECT * FROM users WHERE id = ?';
db.query(query, [userId]);
```

[Additional vulnerabilities...]

📊 Summary
- Requires immediate fix: 2
- Recommended fix: 4
- Improvement suggestions: 2
```

## Auto-fixable Items

- Hardcoded values that can be moved to environment variables
- Adding security headers
- HTTPS redirect configuration
- Secure cookie flag settings

## Notes

- Always test after auto-fixing
- Some fixes require manual review
- Consider framework-specific nuances
- Back up before applying fixes
