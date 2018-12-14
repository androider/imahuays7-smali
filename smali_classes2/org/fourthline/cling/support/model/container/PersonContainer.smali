.class public Lorg/fourthline/cling/support/model/container/PersonContainer;
.super Lorg/fourthline/cling/support/model/container/Container;
.source "PersonContainer.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.person"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/container/PersonContainer;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    .line 28
    sget-object v0, Lorg/fourthline/cling/support/model/container/PersonContainer;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/PersonContainer;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    .line 40
    sget-object v5, Lorg/fourthline/cling/support/model/container/PersonContainer;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    .line 36
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/container/PersonContainer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/container/Container;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 44
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/PersonContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)Lorg/fourthline/cling/support/model/container/PersonContainer;
    .locals 1

    .line 48
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/PersonContainer;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
