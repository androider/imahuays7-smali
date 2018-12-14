.class Lorg/fourthline/cling/registry/RegistryItem;
.super Ljava/lang/Object;
.source "RegistryItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private expirationDetails:Lorg/fourthline/cling/model/ExpirationDetails;

.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/fourthline/cling/model/ExpirationDetails;

    invoke-direct {v0}, Lorg/fourthline/cling/model/ExpirationDetails;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryItem;->expirationDetails:Lorg/fourthline/cling/model/ExpirationDetails;

    .line 32
    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TI;I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/fourthline/cling/model/ExpirationDetails;

    invoke-direct {v0}, Lorg/fourthline/cling/model/ExpirationDetails;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryItem;->expirationDetails:Lorg/fourthline/cling/model/ExpirationDetails;

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, Lorg/fourthline/cling/registry/RegistryItem;->item:Ljava/lang/Object;

    .line 38
    new-instance p1, Lorg/fourthline/cling/model/ExpirationDetails;

    invoke-direct {p1, p3}, Lorg/fourthline/cling/model/ExpirationDetails;-><init>(I)V

    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryItem;->expirationDetails:Lorg/fourthline/cling/model/ExpirationDetails;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    check-cast p1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    iget-object p1, p1, Lorg/fourthline/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItem;->expirationDetails:Lorg/fourthline/cling/model/ExpirationDetails;

    return-object v0
.end method

.method public getItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItem;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " KEY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ITEM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
