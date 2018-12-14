.class public Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "DigestAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;,
        Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _maxNC:I

.field private _maxNonceAgeMs:J

.field private _nonceMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;",
            ">;"
        }
    .end annotation
.end field

.field private _nonceQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;",
            ">;"
        }
    .end annotation
.end field

.field _random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 62
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_random:Ljava/security/SecureRandom;

    const-wide/32 v0, 0xea60

    .line 63
    iput-wide v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    const/16 v0, 0x400

    .line 64
    iput v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNC:I

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceMap:Ljava/util/concurrent/ConcurrentMap;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 59
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private checkNonce(Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;Lorg/eclipse/jetty/server/Request;)I
    .locals 6

    .line 287
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    sub-long v4, v0, v2

    .line 288
    iget-object p2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    :goto_0
    if-eqz p2, :cond_0

    .line 289
    iget-wide v0, p2, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_ts:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 291
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object p2, p2, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object p2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 299
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 303
    :cond_1
    iget-object p1, p1, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 304
    iget p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNC:I

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    return v1

    :cond_2
    long-to-int p1, v2

    .line 306
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->seen(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    return p2

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 312
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return p2
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "DIGEST"

    return-object v0
.end method

.method public getMaxNonceAge()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    return-wide v0
.end method

.method public getMaxNonceCount()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNC:I

    return v0
.end method

.method public newNonce(Lorg/eclipse/jetty/server/Request;)Ljava/lang/String;
    .locals 5

    :cond_0
    const/16 v0, 0x18

    .line 267
    new-array v0, v0, [B

    .line 268
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 270
    new-instance v1, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v3

    iget v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNC:I

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;-><init>(Ljava/lang/String;JI)V

    .line 272
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, v1, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    iget-object p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object p1, v1, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

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

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V

    const-string v0, "maxNonceAge"

    .line 108
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    :cond_0
    return-void
.end method

.method public setMaxNonceAge(J)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    return-void
.end method

.method public setMaxNonceCount(I)V
    .locals 0

    .line 125
    iput p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNC:I

    return-void
.end method

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 158
    new-instance p1, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    return-object p1

    .line 160
    :cond_0
    move-object p3, p1

    check-cast p3, Ljavax/servlet/http/HttpServletRequest;

    .line 161
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    const-string v0, "Authorization"

    .line 162
    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 169
    :try_start_0
    sget-object v3, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    sget-object v3, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Credentials: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_1
    new-instance v3, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v4, "=, "

    invoke-direct {v3, v0, v4, v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 172
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    .line 176
    :cond_2
    :goto_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 178
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v1, :cond_3

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0x20

    if-eq v8, v9, :cond_2

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_e

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_d

    if-eqz v5, :cond_c

    const-string v6, "username"

    .line 197
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 198
    iput-object v7, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v6, "realm"

    .line 199
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 200
    iput-object v7, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->realm:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v6, "nonce"

    .line 201
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 202
    iput-object v7, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v6, "nc"

    .line 203
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 204
    iput-object v7, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v6, "cnonce"

    .line 205
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 206
    iput-object v7, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->cnonce:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v6, "qop"

    .line 207
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 208
    iput-object v7, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->qop:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string v6, "uri"

    .line 209
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 210
    iput-object v7, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->uri:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string v6, "response"

    .line 211
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 212
    iput-object v7, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    :cond_b
    :goto_2
    move-object v5, v4

    :cond_c
    :goto_3
    move-object v6, v7

    goto :goto_0

    :cond_d
    move-object v5, v6

    goto :goto_3

    :cond_e
    move-object v5, v4

    goto/16 :goto_0

    .line 218
    :cond_f
    move-object v3, p3

    check-cast v3, Lorg/eclipse/jetty/server/Request;

    invoke-direct {p0, v0, v3}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->checkNonce(Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;Lorg/eclipse/jetty/server/Request;)I

    move-result v3

    if-lez v3, :cond_10

    .line 223
    iget-object v1, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 226
    new-instance p2, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    return-object p2

    :cond_10
    if-nez v3, :cond_11

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_11
    const/4 v1, 0x0

    .line 234
    :goto_4
    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 236
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    const-string p1, "/"

    :cond_12
    const-string v0, "WWW-Authenticate"

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Digest realm=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v3}, Lorg/eclipse/jetty/security/LoginService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", domain=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", nonce=\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Lorg/eclipse/jetty/server/Request;

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->newNonce(Lorg/eclipse/jetty/server/Request;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", algorithm=MD5, qop=\"auth\","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " stale="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x191

    .line 246
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 248
    sget-object p1, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;

    return-object p1

    .line 251
    :cond_13
    sget-object p1, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 255
    :goto_5
    new-instance p2, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {p2, p1}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
