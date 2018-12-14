.class public Lorg/eclipse/jetty/server/session/SessionHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "SessionHandler.java"


# static fields
.field public static final DEFAULT_TRACKING:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _sessionManager:Lorg/eclipse/jetty/server/SessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.eclipse.jetty.server.session"

    .line 46
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 48
    sget-object v0, Ljavax/servlet/SessionTrackingMode;->COOKIE:Ljavax/servlet/SessionTrackingMode;

    sget-object v1, Ljavax/servlet/SessionTrackingMode;->URL:Ljavax/servlet/SessionTrackingMode;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->DEFAULT_TRACKING:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    new-instance v0, Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/session/SessionHandler;-><init>(Lorg/eclipse/jetty/server/SessionManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/SessionHandler;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/SessionManager;->addEventListener(Ljava/util/EventListener;)V

    :cond_0
    return-void
.end method

.method protected checkRequestedSessionId(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 11

    .line 244
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 250
    invoke-interface {v1, v0}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 251
    invoke-interface {v1, p2}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    :cond_0
    return-void

    .line 255
    :cond_1
    sget-object v2, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 262
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v3}, Lorg/eclipse/jetty/server/SessionManager;->isUsingCookies()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    .line 264
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 265
    array-length v6, v3

    if-lez v6, :cond_7

    .line 267
    invoke-interface {v1}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v6

    invoke-interface {v6}, Ljavax/servlet/SessionCookieConfig;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    move-object v8, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 268
    :goto_0
    array-length v9, v3

    if-ge v0, v9, :cond_6

    .line 270
    aget-object v9, v3, v0

    invoke-virtual {v9}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 272
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 275
    sget-object v7, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "Got Session ID {} from cookie"

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v5

    invoke-interface {v7, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 279
    invoke-interface {v1, v2}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 281
    invoke-interface {v1, v7}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v0, v2

    move-object v2, v7

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    move-object v8, v7

    :goto_1
    move-object v7, v2

    const/4 v2, 0x1

    goto :goto_2

    .line 288
    :cond_4
    sget-object v7, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "null session id from cookie"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-interface {v7, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v3, v2

    move-object v0, v7

    move-object v2, v8

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_8

    if-nez v2, :cond_c

    .line 297
    :cond_8
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p2

    .line 299
    invoke-interface {v1}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdPathParameterNamePrefix()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 302
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_c

    .line 305
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v7, v0

    move v0, v7

    .line 307
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 309
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_a

    const/16 v3, 0x23

    if-eq v2, v3, :cond_a

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_a

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 315
    :cond_a
    :goto_5
    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-interface {v1, v0}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v2

    .line 318
    sget-object p2, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 319
    sget-object p2, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Got Session ID {} from URL"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-interface {p2, v3, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    const/4 v3, 0x0

    .line 324
    :cond_c
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Request;->setRequestedSessionId(Ljava/lang/String;)V

    if-eqz v0, :cond_d

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    .line 325
    :goto_6
    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/server/Request;->setRequestedSessionIdFromCookie(Z)V

    if-eqz v2, :cond_e

    .line 326
    invoke-interface {v1, v2}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 327
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    :cond_e
    return-void
.end method

.method public clearEventListeners()V
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->clearEventListeners()V

    :cond_0
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->never()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/session/SessionHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-ne v0, v1, :cond_1

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 152
    :try_start_1
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 154
    :try_start_2
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v2, v4, :cond_0

    .line 157
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 158
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 159
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jetty/server/session/SessionHandler;->checkRequestedSessionId(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;)V

    .line 164
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v4, :cond_3

    .line 166
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_4

    .line 172
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Lorg/eclipse/jetty/server/SessionManager;->access(Ljavax/servlet/http/HttpSession;Z)Lorg/eclipse/jetty/http/HttpCookie;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Response;->addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto/16 :goto_2

    .line 179
    :cond_2
    :try_start_4
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/server/Request;->recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 181
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    goto :goto_0

    :cond_3
    move-object v4, v0

    .line 185
    :cond_4
    :goto_0
    sget-object v5, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 187
    sget-object v5, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionManager="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    sget-object v5, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "session="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v5, v4, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_5
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v4, :cond_6

    .line 193
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v4, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1

    .line 194
    :cond_6
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v4, :cond_7

    .line 195
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v4, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1

    .line 197
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/session/SessionHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    if-eqz v0, :cond_8

    .line 204
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 206
    :cond_8
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    if-eqz p1, :cond_9

    if-nez v3, :cond_9

    if-eq p1, v0, :cond_9

    .line 208
    iget-object p3, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {p3, p1}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 210
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v2, p1, :cond_a

    .line 212
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 213
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    :cond_a
    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v3, v0

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    :goto_2
    if-eqz v0, :cond_b

    .line 204
    iget-object p3, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {p3, v0}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 206
    :cond_b
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p3

    if-eqz p3, :cond_c

    if-nez v3, :cond_c

    if-eq p3, v0, :cond_c

    .line 208
    iget-object p4, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {p4, p3}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    :cond_c
    if-eqz v2, :cond_d

    .line 210
    iget-object p3, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v2, p3, :cond_d

    .line 212
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 213
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 215
    :cond_d
    throw p1
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->start()V

    .line 124
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->stop()V

    .line 136
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    return-void
.end method

.method public getSessionManager()Lorg/eclipse/jetty/server/SessionManager;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    return-object v0
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 13

    .line 108
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 110
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    const/4 v4, 0x0

    const-string v5, "sessionManager"

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    .line 113
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    const-string v11, "sessionManager"

    const/4 v12, 0x1

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 7

    .line 88
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 90
    :cond_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 92
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    const-string v4, "sessionManager"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 96
    invoke-interface {p1, p0}, Lorg/eclipse/jetty/server/SessionManager;->setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V

    .line 98
    :cond_2
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v6, :cond_3

    const/4 p1, 0x0

    .line 101
    invoke-interface {v6, p1}, Lorg/eclipse/jetty/server/SessionManager;->setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V

    :cond_3
    return-void
.end method
