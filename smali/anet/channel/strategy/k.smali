.class Lanet/channel/strategy/k;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/k$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanet/channel/strategy/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lanet/channel/strategy/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private transient d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lanet/channel/strategy/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lanet/channel/strategy/k;->c:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lanet/channel/strategy/k;->d:Ljava/util/Comparator;

    return-void
.end method

.method private static a(Ljava/util/Collection;Lanet/channel/strategy/k$a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lanet/channel/strategy/k$a<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 205
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 206
    invoke-interface {p1, v3}, Lanet/channel/strategy/k$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-ne v1, p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method static synthetic a(Lanet/channel/strategy/k;)Ljava/util/Map;
    .locals 0

    .line 20
    iget-object p0, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    return-object p0
.end method

.method private a(Ljava/lang/String;ILanet/channel/strategy/y$a;)V
    .locals 3

    .line 120
    invoke-static {p3}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/y$a;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    new-instance v2, Lanet/channel/strategy/w;

    invoke-direct {v2, p0, p3, p1, v0}, Lanet/channel/strategy/w;-><init>(Lanet/channel/strategy/k;Lanet/channel/strategy/y$a;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    invoke-static {v1, v2}, Lanet/channel/strategy/k;->a(Ljava/util/Collection;Lanet/channel/strategy/k$a;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 130
    iget-object p1, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/d;

    .line 131
    iget v0, p3, Lanet/channel/strategy/y$a;->c:I

    iput v0, p1, Lanet/channel/strategy/d;->d:I

    .line 132
    iget v0, p3, Lanet/channel/strategy/y$a;->d:I

    iput v0, p1, Lanet/channel/strategy/d;->e:I

    .line 133
    iget p3, p3, Lanet/channel/strategy/y$a;->f:I

    iput p3, p1, Lanet/channel/strategy/d;->g:I

    .line 134
    iput p2, p1, Lanet/channel/strategy/d;->h:I

    const/4 p2, 0x0

    .line 135
    iput-boolean p2, p1, Lanet/channel/strategy/d;->i:Z

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {p1, p3}, Lanet/channel/strategy/d;->a(Ljava/lang/String;Lanet/channel/strategy/y$a;)Lanet/channel/strategy/d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 139
    iput p2, p1, Lanet/channel/strategy/d;->h:I

    .line 140
    iget-object p2, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lanet/channel/strategy/d;->i()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 141
    iget-object p2, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lanet/channel/strategy/d;->i()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lanet/channel/strategy/b;

    invoke-direct {v0}, Lanet/channel/strategy/b;-><init>()V

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    iget-object p2, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private d()Ljava/util/Comparator;
    .locals 1

    .line 171
    iget-object v0, p0, Lanet/channel/strategy/k;->d:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lanet/channel/strategy/x;

    invoke-direct {v0, p0}, Lanet/channel/strategy/x;-><init>(Lanet/channel/strategy/k;)V

    iput-object v0, p0, Lanet/channel/strategy/k;->d:Ljava/util/Comparator;

    .line 195
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/k;->d:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 37
    iget-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    .line 40
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    .line 45
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/b;

    invoke-virtual {v1}, Lanet/channel/strategy/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/d;

    .line 54
    iget-object v2, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/d;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 55
    iget-object v2, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/d;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lanet/channel/strategy/b;

    invoke-direct {v3}, Lanet/channel/strategy/b;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 60
    :cond_5
    iget-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-direct {p0}, Lanet/channel/strategy/k;->d()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public a(Lanet/channel/strategy/c;Lanet/channel/strategy/a;)V
    .locals 2

    .line 162
    instance-of v0, p1, Lanet/channel/strategy/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 164
    check-cast p1, Lanet/channel/strategy/d;

    .line 165
    iget-object v0, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lanet/channel/strategy/d;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/b;

    iget-boolean p2, p2, Lanet/channel/strategy/a;->a:Z

    invoke-virtual {p1, p2}, Lanet/channel/strategy/b;->a(Z)V

    .line 166
    iget-object p1, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    iget-object p2, p0, Lanet/channel/strategy/k;->d:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public a(Lanet/channel/strategy/y$b;)V
    .locals 6

    .line 90
    iget-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/d;

    .line 91
    iput-boolean v2, v1, Lanet/channel/strategy/d;->i:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    :goto_1
    iget-object v3, p1, Lanet/channel/strategy/y$b;->g:[Lanet/channel/strategy/y$a;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    const/4 v3, 0x0

    .line 95
    :goto_2
    iget-object v4, p1, Lanet/channel/strategy/y$b;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 96
    iget-object v4, p1, Lanet/channel/strategy/y$b;->e:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p1, Lanet/channel/strategy/y$b;->g:[Lanet/channel/strategy/y$a;

    aget-object v5, v5, v1

    invoke-direct {p0, v4, v2, v5}, Lanet/channel/strategy/k;->a(Ljava/lang/String;ILanet/channel/strategy/y$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 98
    :cond_1
    iget-object v3, p1, Lanet/channel/strategy/y$b;->f:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 99
    iput-boolean v2, p0, Lanet/channel/strategy/k;->c:Z

    const/4 v3, 0x0

    .line 100
    :goto_3
    iget-object v4, p1, Lanet/channel/strategy/y$b;->f:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 101
    iget-object v4, p1, Lanet/channel/strategy/y$b;->f:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p1, Lanet/channel/strategy/y$b;->g:[Lanet/channel/strategy/y$a;

    aget-object v5, v5, v1

    invoke-direct {p0, v4, v0, v5}, Lanet/channel/strategy/k;->a(Ljava/lang/String;ILanet/channel/strategy/y$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 104
    :cond_2
    iput-boolean v0, p0, Lanet/channel/strategy/k;->c:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_4
    iget-object p1, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 110
    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/d;

    iget-boolean v0, v0, Lanet/channel/strategy/d;->i:Z

    if-eqz v0, :cond_5

    .line 112
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    .line 116
    :cond_6
    iget-object p1, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-direct {p0}, Lanet/channel/strategy/k;->d()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lanet/channel/strategy/c;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/d;

    .line 76
    iget-object v4, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lanet/channel/strategy/d;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/b;

    .line 77
    invoke-virtual {v4}, Lanet/channel/strategy/b;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "awcn.StrategyList"

    const-string v5, "strategy ban!"

    const/4 v6, 0x2

    .line 78
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "strategy"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v5, v1, v6}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 86
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_4
    return-object v2
.end method

.method public c()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/d;

    .line 151
    iget-boolean v2, p0, Lanet/channel/strategy/k;->c:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lanet/channel/strategy/d;->h:I

    if-eqz v2, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lanet/channel/strategy/k;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/d;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/b;

    invoke-virtual {v1}, Lanet/channel/strategy/b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lanet/channel/strategy/k;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
