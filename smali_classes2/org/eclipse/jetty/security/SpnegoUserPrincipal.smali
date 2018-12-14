.class public Lorg/eclipse/jetty/security/SpnegoUserPrincipal;
.super Ljava/lang/Object;
.source "SpnegoUserPrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# instance fields
.field private _encodedToken:Ljava/lang/String;

.field private final _name:Ljava/lang/String;

.field private _token:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_name:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_encodedToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_name:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_token:[B

    return-void
.end method


# virtual methods
.method public getEncodedToken()Ljava/lang/String;
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_encodedToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_token:[B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/security/B64Code;->encode([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_encodedToken:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_encodedToken:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_token:[B

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_encodedToken:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/security/B64Code;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_token:[B

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;->_token:[B

    return-object v0
.end method
