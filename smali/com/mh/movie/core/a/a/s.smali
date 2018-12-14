.class public final Lcom/mh/movie/core/a/a/s;
.super Ljava/lang/Object;
.source "DaggerCaptureComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/s$b;,
        Lcom/mh/movie/core/a/a/s$e;,
        Lcom/mh/movie/core/a/a/s$g;,
        Lcom/mh/movie/core/a/a/s$c;,
        Lcom/mh/movie/core/a/a/s$d;,
        Lcom/mh/movie/core/a/a/s$f;,
        Lcom/mh/movie/core/a/a/s$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/s$f;

.field private b:Lcom/mh/movie/core/a/a/s$d;

.field private c:Lcom/mh/movie/core/a/a/s$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/CaptureModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/s$g;

.field private h:Lcom/mh/movie/core/a/a/s$e;

.field private i:Lcom/mh/movie/core/a/a/s$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/CapturePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/s$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/s;->a(Lcom/mh/movie/core/a/a/s$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/s$a;Lcom/mh/movie/core/a/a/s$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/s;-><init>(Lcom/mh/movie/core/a/a/s$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/s$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/s$a;-><init>(Lcom/mh/movie/core/a/a/s$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/s$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/s$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/s$a;->a(Lcom/mh/movie/core/a/a/s$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/s$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/s;->a:Lcom/mh/movie/core/a/a/s$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/s$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/s$a;->a(Lcom/mh/movie/core/a/a/s$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/s$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/s;->b:Lcom/mh/movie/core/a/a/s$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/s$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/s$a;->a(Lcom/mh/movie/core/a/a/s$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/s$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/s;->c:Lcom/mh/movie/core/a/a/s$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/s;->a:Lcom/mh/movie/core/a/a/s$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/s;->b:Lcom/mh/movie/core/a/a/s$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/s;->c:Lcom/mh/movie/core/a/a/s$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/m;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/m;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/s;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/s$a;->b(Lcom/mh/movie/core/a/a/s$a;)Lcom/mh/movie/core/a/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/s;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/t;->a(Lcom/mh/movie/core/a/b/s;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/t;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/s;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/s$a;->b(Lcom/mh/movie/core/a/a/s$a;)Lcom/mh/movie/core/a/b/s;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/u;->a(Lcom/mh/movie/core/a/b/s;)Lcom/mh/movie/core/a/b/u;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/s;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/s$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/s$a;->a(Lcom/mh/movie/core/a/a/s$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/s$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/s;->g:Lcom/mh/movie/core/a/a/s$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/s$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/s$a;->a(Lcom/mh/movie/core/a/a/s$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/s$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/s;->h:Lcom/mh/movie/core/a/a/s$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/s$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/s$a;->a(Lcom/mh/movie/core/a/a/s$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/s$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/s;->i:Lcom/mh/movie/core/a/a/s$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/s;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/s;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/s;->g:Lcom/mh/movie/core/a/a/s$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/s;->c:Lcom/mh/movie/core/a/a/s$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/s;->h:Lcom/mh/movie/core/a/a/s$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/s;->i:Lcom/mh/movie/core/a/a/s$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/m;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/m;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/s;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;)Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/s;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/s;->b(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;)Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    return-void
.end method
