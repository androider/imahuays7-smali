.class public Lorg/dom4j/tree/DefaultDocumentType;
.super Lorg/dom4j/tree/AbstractDocumentType;
.source "DefaultDocumentType.java"


# instance fields
.field protected elementName:Ljava/lang/String;

.field private externalDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/dom4j/dtd/Decl;",
            ">;"
        }
    .end annotation
.end field

.field private internalDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/dom4j/dtd/Decl;",
            ">;"
        }
    .end annotation
.end field

.field private publicID:Ljava/lang/String;

.field private systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocumentType;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocumentType;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->elementName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/dom4j/tree/DefaultDocumentType;->systemID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocumentType;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->elementName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lorg/dom4j/tree/DefaultDocumentType;->publicID:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lorg/dom4j/tree/DefaultDocumentType;->systemID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocumentType;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalDeclarations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/dtd/Decl;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocumentType;->externalDeclarations:Ljava/util/List;

    return-object v0
.end method

.method public getInternalDeclarations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/dtd/Decl;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocumentType;->internalDeclarations:Ljava/util/List;

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocumentType;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocumentType;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public setElementName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->elementName:Ljava/lang/String;

    return-void
.end method

.method public setExternalDeclarations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/dtd/Decl;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->externalDeclarations:Ljava/util/List;

    return-void
.end method

.method public setInternalDeclarations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/dtd/Decl;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->internalDeclarations:Ljava/util/List;

    return-void
.end method

.method public setPublicID(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->publicID:Ljava/lang/String;

    return-void
.end method

.method public setSystemID(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->systemID:Ljava/lang/String;

    return-void
.end method
