.class public final Lio/rx_cache2/internal/a;
.super Ljava/lang/Object;
.source "DaggerRxCacheComponent.java"

# interfaces
.implements Lio/rx_cache2/internal/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rx_cache2/internal/a$a;
    }
.end annotation


# instance fields
.field private a:Lio/rx_cache2/internal/l;

.field private b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/rx_cache2/internal/a/d;

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/victoralbertos/jolyglot/JolyglotGenerics;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lio/rx_cache2/internal/c;

.field private h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lio/rx_cache2/internal/cache/g;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lio/rx_cache2/internal/cache/l;

.field private l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/b;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lio/rx_cache2/internal/cache/n;

.field private o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/o;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/cache/d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/rx_cache2/internal/a$a;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/a;->a(Lio/rx_cache2/internal/a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/rx_cache2/internal/a$a;Lio/rx_cache2/internal/a$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/a;-><init>(Lio/rx_cache2/internal/a$a;)V

    return-void
.end method

.method public static a()Lio/rx_cache2/internal/a$a;
    .locals 2

    .line 72
    new-instance v0, Lio/rx_cache2/internal/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/rx_cache2/internal/a$a;-><init>(Lio/rx_cache2/internal/a$1;)V

    return-object v0
.end method

.method private a(Lio/rx_cache2/internal/a$a;)V
    .locals 5

    .line 100
    invoke-static {p1}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->a:Lio/rx_cache2/internal/l;

    .line 102
    invoke-static {p1}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;

    move-result-object v0

    invoke-static {v0}, Lio/rx_cache2/internal/r;->a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/r;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->b:Ljavax/inject/Provider;

    .line 105
    invoke-static {p1}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;

    move-result-object v0

    invoke-static {v0}, Lio/rx_cache2/internal/n;->a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/n;

    move-result-object v0

    .line 104
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->c:Ljavax/inject/Provider;

    .line 107
    invoke-static {p1}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;

    move-result-object v0

    invoke-static {v0}, Lio/rx_cache2/internal/p;->a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/p;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->d:Ljavax/inject/Provider;

    .line 108
    iget-object v0, p0, Lio/rx_cache2/internal/a;->d:Ljavax/inject/Provider;

    invoke-static {v0}, Lio/rx_cache2/internal/a/d;->a(Ljavax/inject/Provider;)Lio/rx_cache2/internal/a/d;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->e:Lio/rx_cache2/internal/a/d;

    .line 110
    invoke-static {p1}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;

    move-result-object v0

    invoke-static {v0}, Lio/rx_cache2/internal/q;->a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/q;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->f:Ljavax/inject/Provider;

    .line 111
    iget-object v0, p0, Lio/rx_cache2/internal/a;->c:Ljavax/inject/Provider;

    iget-object v1, p0, Lio/rx_cache2/internal/a;->e:Lio/rx_cache2/internal/a/d;

    iget-object v2, p0, Lio/rx_cache2/internal/a;->f:Ljavax/inject/Provider;

    .line 112
    invoke-static {v0, v1, v2}, Lio/rx_cache2/internal/c;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/c;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->g:Lio/rx_cache2/internal/c;

    .line 116
    invoke-static {p1}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/rx_cache2/internal/a;->g:Lio/rx_cache2/internal/c;

    invoke-static {v0, v1}, Lio/rx_cache2/internal/t;->a(Lio/rx_cache2/internal/l;Ljavax/inject/Provider;)Lio/rx_cache2/internal/t;

    move-result-object v0

    .line 115
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->h:Ljavax/inject/Provider;

    .line 117
    iget-object v0, p0, Lio/rx_cache2/internal/a;->b:Ljavax/inject/Provider;

    iget-object v1, p0, Lio/rx_cache2/internal/a;->h:Ljavax/inject/Provider;

    .line 118
    invoke-static {v0, v1}, Lio/rx_cache2/internal/cache/g;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/cache/g;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->i:Lio/rx_cache2/internal/cache/g;

    .line 120
    invoke-static {p1}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;

    move-result-object v0

    invoke-static {v0}, Lio/rx_cache2/internal/o;->a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/o;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->j:Ljavax/inject/Provider;

    .line 121
    iget-object v0, p0, Lio/rx_cache2/internal/a;->b:Ljavax/inject/Provider;

    iget-object v1, p0, Lio/rx_cache2/internal/a;->h:Ljavax/inject/Provider;

    iget-object v2, p0, Lio/rx_cache2/internal/a;->i:Lio/rx_cache2/internal/cache/g;

    .line 126
    invoke-static {}, Lio/rx_cache2/internal/cache/j;->b()Lio/rx_cache2/internal/cache/j;

    move-result-object v3

    iget-object v4, p0, Lio/rx_cache2/internal/a;->j:Ljavax/inject/Provider;

    .line 122
    invoke-static {v0, v1, v2, v3, v4}, Lio/rx_cache2/internal/cache/l;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/cache/l;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->k:Lio/rx_cache2/internal/cache/l;

    .line 130
    invoke-static {p1}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;

    move-result-object v0

    invoke-static {v0}, Lio/rx_cache2/internal/m;->a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/m;

    move-result-object v0

    .line 129
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->l:Ljavax/inject/Provider;

    .line 131
    iget-object v0, p0, Lio/rx_cache2/internal/a;->b:Ljavax/inject/Provider;

    iget-object v1, p0, Lio/rx_cache2/internal/a;->h:Ljavax/inject/Provider;

    iget-object v2, p0, Lio/rx_cache2/internal/a;->l:Ljavax/inject/Provider;

    iget-object v3, p0, Lio/rx_cache2/internal/a;->j:Ljavax/inject/Provider;

    .line 133
    invoke-static {v0, v1, v2, v3}, Lio/rx_cache2/internal/cache/c;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/cache/c;

    move-result-object v0

    .line 132
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->m:Ljavax/inject/Provider;

    .line 138
    iget-object v0, p0, Lio/rx_cache2/internal/a;->b:Ljavax/inject/Provider;

    iget-object v1, p0, Lio/rx_cache2/internal/a;->h:Ljavax/inject/Provider;

    iget-object v2, p0, Lio/rx_cache2/internal/a;->l:Ljavax/inject/Provider;

    iget-object v3, p0, Lio/rx_cache2/internal/a;->m:Ljavax/inject/Provider;

    iget-object v4, p0, Lio/rx_cache2/internal/a;->j:Ljavax/inject/Provider;

    .line 139
    invoke-static {v0, v1, v2, v3, v4}, Lio/rx_cache2/internal/cache/n;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/cache/n;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->n:Lio/rx_cache2/internal/cache/n;

    .line 145
    iget-object v0, p0, Lio/rx_cache2/internal/a;->i:Lio/rx_cache2/internal/cache/g;

    iget-object v1, p0, Lio/rx_cache2/internal/a;->k:Lio/rx_cache2/internal/cache/l;

    iget-object v2, p0, Lio/rx_cache2/internal/a;->n:Lio/rx_cache2/internal/cache/n;

    .line 147
    invoke-static {v0, v1, v2}, Lio/rx_cache2/internal/cache/p;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/cache/p;

    move-result-object v0

    .line 146
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->o:Ljavax/inject/Provider;

    .line 151
    invoke-static {p1}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;

    move-result-object v0

    invoke-static {v0}, Lio/rx_cache2/internal/v;->a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/v;

    move-result-object v0

    .line 150
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->p:Ljavax/inject/Provider;

    .line 152
    iget-object v0, p0, Lio/rx_cache2/internal/a;->b:Ljavax/inject/Provider;

    iget-object v1, p0, Lio/rx_cache2/internal/a;->h:Ljavax/inject/Provider;

    .line 157
    invoke-static {}, Lio/rx_cache2/internal/cache/j;->b()Lio/rx_cache2/internal/cache/j;

    move-result-object v2

    iget-object v3, p0, Lio/rx_cache2/internal/a;->j:Ljavax/inject/Provider;

    .line 154
    invoke-static {v0, v1, v2, v3}, Lio/rx_cache2/internal/cache/e;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/cache/e;

    move-result-object v0

    .line 153
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/a;->q:Ljavax/inject/Provider;

    .line 160
    invoke-static {p1}, Lio/rx_cache2/internal/a$a;->a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;

    move-result-object p1

    invoke-static {p1}, Lio/rx_cache2/internal/s;->a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/s;

    move-result-object p1

    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lio/rx_cache2/internal/a;->r:Ljavax/inject/Provider;

    return-void
.end method

.method private c()Lio/rx_cache2/internal/cache/h;
    .locals 4

    .line 76
    new-instance v0, Lio/rx_cache2/internal/cache/h;

    iget-object v1, p0, Lio/rx_cache2/internal/a;->b:Ljavax/inject/Provider;

    .line 77
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rx_cache2/internal/d;

    iget-object v2, p0, Lio/rx_cache2/internal/a;->h:Ljavax/inject/Provider;

    .line 78
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rx_cache2/internal/e;

    iget-object v3, p0, Lio/rx_cache2/internal/a;->f:Ljavax/inject/Provider;

    .line 79
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-direct {v0, v1, v2, v3}, Lio/rx_cache2/internal/cache/h;-><init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;Lio/victoralbertos/jolyglot/JolyglotGenerics;)V

    return-object v0
.end method

.method private d()Lio/rx_cache2/internal/b/c;
    .locals 4

    .line 83
    new-instance v0, Lio/rx_cache2/internal/b/c;

    iget-object v1, p0, Lio/rx_cache2/internal/a;->h:Ljavax/inject/Provider;

    .line 84
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rx_cache2/internal/e;

    iget-object v2, p0, Lio/rx_cache2/internal/a;->r:Ljavax/inject/Provider;

    .line 85
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lio/rx_cache2/internal/a;->j:Ljavax/inject/Provider;

    .line 86
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/rx_cache2/internal/b/c;-><init>(Lio/rx_cache2/internal/e;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method private e()Lio/rx_cache2/internal/g;
    .locals 7

    .line 90
    new-instance v6, Lio/rx_cache2/internal/g;

    iget-object v0, p0, Lio/rx_cache2/internal/a;->o:Ljavax/inject/Provider;

    .line 91
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/rx_cache2/internal/cache/o;

    iget-object v0, p0, Lio/rx_cache2/internal/a;->p:Ljavax/inject/Provider;

    .line 92
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    iget-object v0, p0, Lio/rx_cache2/internal/a;->q:Ljavax/inject/Provider;

    .line 93
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/rx_cache2/internal/cache/d;

    .line 94
    invoke-direct {p0}, Lio/rx_cache2/internal/a;->c()Lio/rx_cache2/internal/cache/h;

    move-result-object v4

    .line 95
    invoke-direct {p0}, Lio/rx_cache2/internal/a;->d()Lio/rx_cache2/internal/b/c;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/rx_cache2/internal/g;-><init>(Lio/rx_cache2/internal/cache/o;Ljava/lang/Boolean;Lio/rx_cache2/internal/cache/d;Lio/rx_cache2/internal/cache/h;Lio/rx_cache2/internal/b/c;)V

    return-object v6
.end method


# virtual methods
.method public b()Lio/rx_cache2/internal/f;
    .locals 2

    .line 165
    iget-object v0, p0, Lio/rx_cache2/internal/a;->a:Lio/rx_cache2/internal/l;

    .line 166
    invoke-direct {p0}, Lio/rx_cache2/internal/a;->e()Lio/rx_cache2/internal/g;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lio/rx_cache2/internal/u;->a(Lio/rx_cache2/internal/l;Lio/rx_cache2/internal/g;)Lio/rx_cache2/internal/f;

    move-result-object v0

    return-object v0
.end method
