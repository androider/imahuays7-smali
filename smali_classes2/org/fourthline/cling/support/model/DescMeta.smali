.class public Lorg/fourthline/cling/support/model/DescMeta;
.super Ljava/lang/Object;
.source "DescMeta.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected id:Ljava/lang/String;

.field protected metadata:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field protected nameSpace:Ljava/net/URI;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "TM;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DescMeta;->id:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DescMeta;->type:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lorg/fourthline/cling/support/model/DescMeta;->nameSpace:Ljava/net/URI;

    .line 59
    iput-object p4, p0, Lorg/fourthline/cling/support/model/DescMeta;->metadata:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createMetadataDocument()Lorg/w3c/dom/Document;
    .locals 3

    .line 96
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 98
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "urn:fourthline-org:cling:support:content-directory-desc-1-0"

    const-string v2, "desc-wrapper"

    .line 99
    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 100
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DescMeta;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DescMeta;->metadata:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameSpace()Ljava/net/URI;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DescMeta;->nameSpace:Ljava/net/URI;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DescMeta;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DescMeta;->id:Ljava/lang/String;

    return-void
.end method

.method public setMetadata(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DescMeta;->metadata:Ljava/lang/Object;

    return-void
.end method

.method public setNameSpace(Ljava/net/URI;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DescMeta;->nameSpace:Ljava/net/URI;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DescMeta;->type:Ljava/lang/String;

    return-void
.end method
