.class public abstract Lcom/flurry/sdk/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dp$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/flurry/sdk/dr;

.field private e:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/by;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "defaultDataKey_"

    .line 24
    iput-object v0, p0, Lcom/flurry/sdk/dp;->b:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dp;->c:Ljava/util/Set;

    .line 27
    new-instance v0, Lcom/flurry/sdk/dp$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dp$1;-><init>(Lcom/flurry/sdk/dp;)V

    iput-object v0, p0, Lcom/flurry/sdk/dp;->e:Lcom/flurry/sdk/cw;

    .line 40
    iput-object p2, p0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object p2

    const-string v0, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v1, p0, Lcom/flurry/sdk/dp;->e:Lcom/flurry/sdk/cw;

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 1047
    new-instance p2, Lcom/flurry/sdk/dp$2;

    invoke-direct {p2, p0, p1}, Lcom/flurry/sdk/dp$2;-><init>(Lcom/flurry/sdk/dp;Ljava/lang/String;)V

    .line 1056
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 5216
    iget-object v0, p0, Lcom/flurry/sdk/dp;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 261
    new-instance p3, Lcom/flurry/sdk/dp$5;

    invoke-direct {p3, p0, p1, p2}, Lcom/flurry/sdk/dp$5;-><init>(Lcom/flurry/sdk/dp;Ljava/lang/String;Ljava/lang/String;)V

    .line 6056
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method protected final b()V
    .locals 2

    .line 110
    new-instance v0, Lcom/flurry/sdk/dp$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dp$4;-><init>(Lcom/flurry/sdk/dp;)V

    .line 3056
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 89
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    new-instance v0, Lcom/flurry/sdk/dp$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/dp$3;-><init>(Lcom/flurry/sdk/dp;[BLjava/lang/String;Ljava/lang/String;)V

    .line 2056
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {p0}, Lcom/flurry/sdk/dp;->b()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 91
    iget-object p2, p0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    const-string p3, "Report that has to be sent is EMPTY or NULL"

    invoke-static {p1, p2, p3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final c()V
    .locals 10

    .line 143
    invoke-static {}, Lcom/flurry/sdk/bz;->a()Lcom/flurry/sdk/bz;

    move-result-object v0

    .line 4137
    iget-boolean v0, v0, Lcom/flurry/sdk/bz;->c:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    const-string v2, "Reports were not sent! No Internet connection!"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dp;->d:Lcom/flurry/sdk/dr;

    .line 4495
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/flurry/sdk/dr;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    const-string v1, "No more reports to send."

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lcom/flurry/sdk/dp;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 160
    iget-object v4, p0, Lcom/flurry/sdk/dp;->d:Lcom/flurry/sdk/dr;

    invoke-virtual {v4, v2}, Lcom/flurry/sdk/dr;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 162
    iget-object v5, p0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Number of not sent blocks = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 166
    iget-object v6, p0, Lcom/flurry/sdk/dp;->c:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 171
    invoke-direct {p0}, Lcom/flurry/sdk/dp;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 176
    invoke-static {v5}, Lcom/flurry/sdk/dq;->b(Ljava/lang/String;)Lcom/flurry/sdk/cu;

    move-result-object v6

    .line 178
    invoke-virtual {v6}, Lcom/flurry/sdk/cu;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/dq;

    const/4 v7, 0x6

    if-nez v6, :cond_4

    .line 180
    iget-object v6, p0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    const-string v8, "Internal ERROR! Cannot read!"

    invoke-static {v7, v6, v8}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v6, p0, Lcom/flurry/sdk/dp;->d:Lcom/flurry/sdk/dr;

    invoke-virtual {v6, v5, v2}, Lcom/flurry/sdk/dr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 5045
    :cond_4
    iget-object v6, v6, Lcom/flurry/sdk/dq;->b:[B

    if-eqz v6, :cond_6

    .line 186
    array-length v8, v6

    if-nez v8, :cond_5

    goto :goto_1

    .line 192
    :cond_5
    iget-object v7, p0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Reading block info "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/flurry/sdk/dp;->c:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0, v6, v5, v2}, Lcom/flurry/sdk/dp;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    const-string v8, "Internal ERROR! Report is empty!"

    invoke-static {v7, v6, v8}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v6, p0, Lcom/flurry/sdk/dp;->d:Lcom/flurry/sdk/dr;

    invoke-virtual {v6, v5, v2}, Lcom/flurry/sdk/dr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_7
    return-void
.end method

.method protected final c([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/dp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 125
    new-instance p3, Lcom/flurry/sdk/dq;

    invoke-direct {p3, p1}, Lcom/flurry/sdk/dq;-><init>([B)V

    .line 4041
    iget-object p1, p3, Lcom/flurry/sdk/dq;->a:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lcom/flurry/sdk/dq;->b(Ljava/lang/String;)Lcom/flurry/sdk/cu;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p3}, Lcom/flurry/sdk/cu;->a(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/flurry/sdk/dp;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving Block File "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 4103
    iget-object v2, v2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 134
    invoke-static {p1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {v2, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    .line 132
    invoke-static {v1, v0, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/flurry/sdk/dp;->d:Lcom/flurry/sdk/dr;

    invoke-virtual {p1, p3, p2}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dq;Ljava/lang/String;)V

    return-void
.end method

.method protected final d()V
    .locals 0

    .line 220
    invoke-virtual {p0}, Lcom/flurry/sdk/dp;->b()V

    return-void
.end method
