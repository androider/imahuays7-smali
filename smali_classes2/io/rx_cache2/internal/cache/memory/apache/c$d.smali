.class public abstract Lio/rx_cache2/internal/cache/memory/apache/c$d;
.super Ljava/lang/Object;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "d"
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
.field private final a:Lio/rx_cache2/internal/cache/memory/apache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lio/rx_cache2/internal/cache/memory/apache/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Lio/rx_cache2/internal/cache/memory/apache/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method protected constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1143
    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    .line 1144
    iget-object v0, p1, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 1145
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lez v1, :cond_0

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 1148
    aget-object v2, v0, v1

    goto :goto_0

    .line 1150
    :cond_0
    iput-object v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->d:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 1151
    iput v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->b:I

    .line 1152
    iget p1, p1, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    iput p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->e:I

    return-void
.end method


# virtual methods
.method protected b()Lio/rx_cache2/internal/cache/memory/apache/c$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    iget v0, v0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    iget v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->e:I

    if-eq v0, v1, :cond_0

    .line 1161
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1163
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->d:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    if-nez v0, :cond_1

    .line 1165
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_1
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    iget-object v1, v1, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 1168
    iget v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->b:I

    .line 1169
    iget-object v3, v0, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    :goto_0
    if-nez v3, :cond_2

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 1171
    aget-object v3, v1, v2

    goto :goto_0

    .line 1173
    :cond_2
    iput-object v3, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->d:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 1174
    iput v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->b:I

    .line 1175
    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->c:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    return-object v0
.end method

.method protected c()Lio/rx_cache2/internal/cache/memory/apache/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1180
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->c:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1156
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->d:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()V
    .locals 2

    .line 1184
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->c:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    iget v0, v0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    iget v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->e:I

    if-eq v0, v1, :cond_1

    .line 1188
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1190
    :cond_1
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->c:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    invoke-virtual {v1}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rx_cache2/internal/cache/memory/apache/c;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1191
    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->c:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 1192
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    iget v0, v0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    iput v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1197
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->c:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    if-eqz v0, :cond_0

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->c:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    invoke-virtual {v1}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$d;->c:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    invoke-virtual {v1}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
