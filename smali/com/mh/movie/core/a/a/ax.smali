.class public final Lcom/mh/movie/core/a/a/ax;
.super Ljava/lang/Object;
.source "DaggerPlayRecordComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ax$b;,
        Lcom/mh/movie/core/a/a/ax$e;,
        Lcom/mh/movie/core/a/a/ax$g;,
        Lcom/mh/movie/core/a/a/ax$c;,
        Lcom/mh/movie/core/a/a/ax$d;,
        Lcom/mh/movie/core/a/a/ax$f;,
        Lcom/mh/movie/core/a/a/ax$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ax$f;

.field private b:Lcom/mh/movie/core/a/a/ax$d;

.field private c:Lcom/mh/movie/core/a/a/ax$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/PlayRecordModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/am$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/am$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ax$g;

.field private h:Lcom/mh/movie/core/a/a/ax$e;

.field private i:Lcom/mh/movie/core/a/a/ax$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ax$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ax;->a(Lcom/mh/movie/core/a/a/ax$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ax$a;Lcom/mh/movie/core/a/a/ax$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ax;-><init>(Lcom/mh/movie/core/a/a/ax$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ax$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/ax$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ax$a;-><init>(Lcom/mh/movie/core/a/a/ax$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ax$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/ax$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ax$a;->a(Lcom/mh/movie/core/a/a/ax$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ax$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ax;->a:Lcom/mh/movie/core/a/a/ax$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ax$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ax$a;->a(Lcom/mh/movie/core/a/a/ax$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ax$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ax;->b:Lcom/mh/movie/core/a/a/ax$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/ax$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ax$a;->a(Lcom/mh/movie/core/a/a/ax$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ax$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ax;->c:Lcom/mh/movie/core/a/a/ax$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ax;->a:Lcom/mh/movie/core/a/a/ax$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ax;->b:Lcom/mh/movie/core/a/a/ax$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ax;->c:Lcom/mh/movie/core/a/a/ax$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/bs;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/bs;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ax;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ax$a;->b(Lcom/mh/movie/core/a/a/ax$a;)Lcom/mh/movie/core/a/b/cy;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ax;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/cz;->a(Lcom/mh/movie/core/a/b/cy;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/cz;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ax;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ax$a;->b(Lcom/mh/movie/core/a/a/ax$a;)Lcom/mh/movie/core/a/b/cy;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/da;->a(Lcom/mh/movie/core/a/b/cy;)Lcom/mh/movie/core/a/b/da;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ax;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/ax$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ax$a;->a(Lcom/mh/movie/core/a/a/ax$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ax$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ax;->g:Lcom/mh/movie/core/a/a/ax$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/ax$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ax$a;->a(Lcom/mh/movie/core/a/a/ax$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ax$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ax;->h:Lcom/mh/movie/core/a/a/ax$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/ax$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ax$a;->a(Lcom/mh/movie/core/a/a/ax$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ax$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ax;->i:Lcom/mh/movie/core/a/a/ax$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ax;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ax;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ax;->g:Lcom/mh/movie/core/a/a/ax$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ax;->c:Lcom/mh/movie/core/a/a/ax$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ax;->h:Lcom/mh/movie/core/a/a/ax$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ax;->i:Lcom/mh/movie/core/a/a/ax$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/bz;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/bz;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ax;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;)Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ax;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ax;->b(Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;)Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;

    return-void
.end method
