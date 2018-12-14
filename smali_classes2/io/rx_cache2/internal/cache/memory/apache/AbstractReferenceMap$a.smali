.class Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;
.super Ljava/lang/Object;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:I

.field c:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field i:I


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->a:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    .line 776
    invoke-virtual {p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->b:I

    .line 779
    iget p1, p1, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->f:I

    iput p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->i:I

    return-void
.end method

.method private a()V
    .locals 2

    .line 808
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->a:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    iget v0, v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->f:I

    iget v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->i:I

    if-eq v0, v1, :cond_0

    .line 809
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    .line 814
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected b()Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 818
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->a()V

    .line 819
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 822
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->c:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->d:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    .line 823
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->c:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->a()Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->c:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    .line 824
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->h:Ljava/lang/Object;

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 826
    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    .line 827
    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->h:Ljava/lang/Object;

    .line 828
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->d:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    return-object v0
.end method

.method protected c()Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 832
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->a()V

    .line 833
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->d:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 783
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->a()V

    .line 784
    :cond_0
    :goto_0
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->c:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    .line 786
    iget v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->b:I

    :goto_1
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 789
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->a:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    iget-object v0, v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    aget-object v0, v0, v1

    check-cast v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    goto :goto_1

    .line 791
    :cond_1
    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->c:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    .line 792
    iput v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->b:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 794
    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    .line 795
    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    return v0

    .line 798
    :cond_2
    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    .line 799
    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->h:Ljava/lang/Object;

    .line 800
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->c:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->a()Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->c:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 837
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->a()V

    .line 838
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->d:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 841
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->a:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 842
    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->d:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    .line 843
    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    .line 844
    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->g:Ljava/lang/Object;

    .line 845
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->a:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    iget v0, v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->f:I

    iput v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;->i:I

    return-void
.end method
