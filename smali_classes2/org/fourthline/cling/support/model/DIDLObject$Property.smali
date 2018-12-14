.class public abstract Lorg/fourthline/cling/support/model/DIDLObject$Property;
.super Ljava/lang/Object;
.source "DIDLObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/DIDLObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA;,
        Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP;,
        Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC;,
        Lorg/fourthline/cling/support/model/DIDLObject$Property$DC;,
        Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;,
        Lorg/fourthline/cling/support/model/DIDLObject$Property$NAMESPACE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "Lorg/fourthline/cling/support/model/DIDLAttribute;",
            ">;>;"
        }
    .end annotation
.end field

.field private final descriptorName:Ljava/lang/String;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->value:Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "didlobject$property$upnp$"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->descriptorName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "Lorg/fourthline/cling/support/model/DIDLAttribute;",
            ">;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->value:Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "didlobject$property$upnp$"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->descriptorName:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/fourthline/cling/support/model/DIDLObject$Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "Lorg/fourthline/cling/support/model/DIDLAttribute;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject$Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "Lorg/fourthline/cling/support/model/DIDLAttribute;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 107
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDescriptorName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->descriptorName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 98
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->removeAttribute(Lorg/fourthline/cling/support/model/DIDLObject$Property;)V

    :cond_1
    return-void
.end method

.method public removeAttribute(Lorg/fourthline/cling/support/model/DIDLObject$Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "Lorg/fourthline/cling/support/model/DIDLAttribute;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnElement(Lorg/w3c/dom/Element;)V
    .locals 5

    .line 79
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 82
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/support/model/DIDLAttribute;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/DIDLAttribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/support/model/DIDLAttribute;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLAttribute;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/DIDLAttribute;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-interface {p1, v2, v3, v1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Property;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
