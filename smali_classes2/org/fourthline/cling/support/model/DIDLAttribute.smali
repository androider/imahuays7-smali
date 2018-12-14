.class public Lorg/fourthline/cling/support/model/DIDLAttribute;
.super Ljava/lang/Object;
.source "DIDLAttribute.java"


# instance fields
.field private namespaceURI:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLAttribute;->namespaceURI:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DIDLAttribute;->prefix:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lorg/fourthline/cling/support/model/DIDLAttribute;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLAttribute;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLAttribute;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLAttribute;->value:Ljava/lang/String;

    return-object v0
.end method
