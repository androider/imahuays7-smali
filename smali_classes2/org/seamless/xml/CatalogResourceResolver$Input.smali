.class final Lorg/seamless/xml/CatalogResourceResolver$Input;
.super Ljava/lang/Object;
.source "CatalogResourceResolver.java"

# interfaces
.implements Lorg/w3c/dom/ls/LSInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/xml/CatalogResourceResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Input"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/seamless/xml/CatalogResourceResolver$Input;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/seamless/xml/CatalogResourceResolver$Input;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCertifiedText()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method public setCertifiedText(Z)V
    .locals 0

    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setStringData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
