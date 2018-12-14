.class public Lorg/eclipse/jetty/security/authentication/FormAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "FormAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;,
        Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;,
        Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __FORM_DISPATCH:Ljava/lang/String; = "org.eclipse.jetty.security.dispatch"

.field public static final __FORM_ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.security.form_error_page"

.field public static final __FORM_LOGIN_PAGE:Ljava/lang/String; = "org.eclipse.jetty.security.form_login_page"

.field public static final __J_PASSWORD:Ljava/lang/String; = "j_password"

.field public static final __J_POST:Ljava/lang/String; = "org.eclipse.jetty.security.form_POST"

.field public static final __J_SECURITY_CHECK:Ljava/lang/String; = "/j_security_check"

.field public static final __J_URI:Ljava/lang/String; = "org.eclipse.jetty.security.form_URI"

.field public static final __J_USERNAME:Ljava/lang/String; = "j_username"


# instance fields
.field private _alwaysSaveUri:Z

.field private _dispatch:Z

.field private _formErrorPage:Ljava/lang/String;

.field private _formErrorPath:Ljava/lang/String;

.field private _formLoginPage:Ljava/lang/String;

.field private _formLoginPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;-><init>()V

    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 99
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    .line 100
    :cond_1
    iput-boolean p3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    return-void
.end method

.method private setErrorPage(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 173
    sget-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "form-error-page must start with /"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 179
    iget-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_3

    .line 180
    iget-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method private setLoginPage(Ljava/lang/String;)V
    .locals 4

    const-string v0, "/"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 152
    sget-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "form-login-page must start with /"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 157
    iget-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_1

    .line 158
    iget-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAlwaysSaveUri()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_alwaysSaveUri:Z

    return v0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "FORM"

    return-object v0
.end method

.method public isJSecurityCheck(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "/j_security_check"

    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "/j_security_check"

    .line 375
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 376
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 378
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x23

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3f

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isLoginOrErrorPage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 2

    .line 190
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    check-cast p3, Ljavax/servlet/http/HttpServletRequest;

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p3

    .line 194
    new-instance v0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;Ljava/lang/Object;)V

    const-string p2, "org.eclipse.jetty.security.UserIdentity"

    .line 195
    invoke-interface {p3, p2, v0}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setAlwaysSaveUri(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_alwaysSaveUri:Z

    return-void
.end method

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V

    const-string v0, "org.eclipse.jetty.security.form_login_page"

    .line 131
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    :cond_0
    const-string v0, "org.eclipse.jetty.security.form_error_page"

    .line 134
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    :cond_1
    const-string v0, "org.eclipse.jetty.security.dispatch"

    .line 137
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 138
    iget-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    return-void
.end method

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .line 203
    move-object v0, p1

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    .line 204
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .line 205
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "/"

    .line 209
    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr p3, v2

    if-nez p3, :cond_1

    .line 211
    new-instance p1, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    return-object p1

    .line 213
    :cond_1
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isLoginOrErrorPage(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 214
    new-instance p1, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    return-object p1

    :cond_2
    const/4 p3, 0x1

    .line 216
    invoke-interface {v0, p3}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v2

    .line 221
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    const-string p1, "j_username"

    .line 223
    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "j_password"

    .line 224
    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {p0, p1, v1, v0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    .line 227
    invoke-interface {v0, p3}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p3

    if-eqz v1, :cond_5

    .line 232
    monitor-enter p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "org.eclipse.jetty.security.form_URI"

    .line 234
    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 238
    :cond_3
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "/"

    .line 242
    :cond_4
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    invoke-interface {p2, v5}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 244
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 246
    new-instance p1, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 242
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 250
    :cond_5
    sget-object p3, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 251
    sget-object p3, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form authentication FAILED for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    invoke-interface {p3, p1, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_6
    iget-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    if-nez p1, :cond_7

    if-eqz p2, :cond_9

    const/16 p1, 0x193

    .line 255
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    .line 257
    :cond_7
    iget-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    if-eqz p1, :cond_8

    .line 259
    iget-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p1

    const-string p3, "Cache-Control"

    const-string v1, "No-cache"

    .line 260
    invoke-interface {p2, p3, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Expires"

    .line 261
    invoke-interface {p2, p3, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 262
    new-instance p3, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;

    invoke-direct {p3, v0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    new-instance v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;

    invoke-direct {v0, p2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    invoke-interface {p1, p3, v0}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0

    .line 266
    :cond_8
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    invoke-static {p1, p3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 269
    :cond_9
    :goto_0
    sget-object p1, Lorg/eclipse/jetty/server/Authentication;->SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

    return-object p1

    :cond_a
    const-string v1, "org.eclipse.jetty.security.UserIdentity"

    .line 273
    invoke-interface {v2, v1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/Authentication;

    if-eqz v1, :cond_10

    .line 277
    instance-of v6, v1, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object v7, v1

    check-cast v7, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v7}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/security/LoginService;->validate(Lorg/eclipse/jetty/server/UserIdentity;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v1, "org.eclipse.jetty.security.UserIdentity"

    .line 282
    invoke-interface {v2, v1}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string p2, "org.eclipse.jetty.security.form_URI"

    .line 286
    invoke-interface {v2, p2}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_f

    const-string p3, "org.eclipse.jetty.security.form_POST"

    .line 289
    invoke-interface {v2, p3}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jetty/util/MultiMap;

    if-eqz p3, :cond_e

    .line 292
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v3

    .line 293
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v4, "?"

    .line 294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p2, "org.eclipse.jetty.security.form_POST"

    .line 301
    invoke-interface {v2, p2}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 302
    instance-of p2, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz p2, :cond_d

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    goto :goto_1

    :cond_d
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p1

    :goto_1
    const-string p2, "POST"

    .line 303
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/server/Request;->setMethod(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1, p3}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    goto :goto_2

    :cond_e
    const-string p1, "org.eclipse.jetty.security.form_URI"

    .line 308
    invoke-interface {v2, p1}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    :cond_f
    :goto_2
    return-object v1

    .line 316
    :cond_10
    :goto_3
    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 318
    sget-object p1, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string p2, "auth deferred {}"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {v2}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v5

    invoke-interface {p1, p2, p3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    sget-object p1, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    return-object p1

    .line 323
    :cond_11
    monitor-enter v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string p3, "org.eclipse.jetty.security.form_URI"

    .line 326
    invoke-interface {v2, p3}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_12

    iget-boolean p3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_alwaysSaveUri:Z

    if-eqz p3, :cond_15

    .line 328
    :cond_12
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object p3

    .line 329
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v1, "?"

    .line 330
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    const-string v1, "org.eclipse.jetty.security.form_URI"

    .line 331
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, v1, p3}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "application/x-www-form-urlencoded"

    .line 333
    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_15

    const-string p3, "POST"

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 335
    instance-of p3, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz p3, :cond_14

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    goto :goto_4

    :cond_14
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p1

    .line 336
    :goto_4
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    const-string p3, "org.eclipse.jetty.security.form_POST"

    .line 337
    new-instance v1, Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/eclipse/jetty/util/MultiMap;-><init>(Lorg/eclipse/jetty/util/MultiMap;)V

    invoke-interface {v2, p3, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    :cond_15
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 343
    :try_start_6
    iget-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    if-eqz p1, :cond_16

    .line 345
    iget-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p1

    const-string p3, "Cache-Control"

    const-string v1, "No-cache"

    .line 346
    invoke-interface {p2, p3, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Expires"

    .line 347
    invoke-interface {p2, p3, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 348
    new-instance p3, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;

    invoke-direct {p3, v0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    new-instance v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;

    invoke-direct {v0, p2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    invoke-interface {p1, p3, v0}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_5

    .line 352
    :cond_16
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    invoke-static {p1, p3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 354
    :goto_5
    sget-object p1, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_6 .. :try_end_6} :catch_0

    return-object p1

    :catchall_1
    move-exception p1

    .line 340
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 364
    new-instance p2, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {p2, p1}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 360
    new-instance p2, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {p2, p1}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
