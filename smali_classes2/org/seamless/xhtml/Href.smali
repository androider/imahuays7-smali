.class public Lorg/seamless/xhtml/Href;
.super Ljava/lang/Object;
.source "Href.java"


# instance fields
.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/seamless/xhtml/Href;->uri:Ljava/net/URI;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/seamless/xhtml/Href;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " "

    const-string v1, "%20"

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    new-instance v0, Lorg/seamless/xhtml/Href;

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/seamless/xhtml/Href;-><init>(Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    check-cast p1, Lorg/seamless/xhtml/Href;

    .line 52
    iget-object v2, p0, Lorg/seamless/xhtml/Href;->uri:Ljava/net/URI;

    iget-object p1, p1, Lorg/seamless/xhtml/Href;->uri:Ljava/net/URI;

    invoke-virtual {v2, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/seamless/xhtml/Href;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/seamless/xhtml/Href;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/seamless/xhtml/Href;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
