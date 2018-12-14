.class Lorg/fourthline/cling/support/shared/AbstractMap$2$1;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/AbstractMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field setIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/fourthline/cling/support/shared/AbstractMap$2;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/AbstractMap$2;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/AbstractMap$2$1;->this$1:Lorg/fourthline/cling/support/shared/AbstractMap$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/AbstractMap$2$1;->this$1:Lorg/fourthline/cling/support/shared/AbstractMap$2;

    iget-object p1, p1, Lorg/fourthline/cling/support/shared/AbstractMap$2;->this$0:Lorg/fourthline/cling/support/shared/AbstractMap;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/shared/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/shared/AbstractMap$2$1;->setIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$2$1;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$2$1;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$2$1;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
