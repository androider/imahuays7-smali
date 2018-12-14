.class public final Lcom/mh/movie/core/a/a/ah;
.super Ljava/lang/Object;
.source "DaggerHelpAndFeedBackComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ah$b;,
        Lcom/mh/movie/core/a/a/ah$e;,
        Lcom/mh/movie/core/a/a/ah$g;,
        Lcom/mh/movie/core/a/a/ah$c;,
        Lcom/mh/movie/core/a/a/ah$d;,
        Lcom/mh/movie/core/a/a/ah$f;,
        Lcom/mh/movie/core/a/a/ah$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ah$f;

.field private b:Lcom/mh/movie/core/a/a/ah$d;

.field private c:Lcom/mh/movie/core/a/a/ah$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/ui/model/HelpAndFeedBackModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/v$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/v$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ah$g;

.field private h:Lcom/mh/movie/core/a/a/ah$e;

.field private i:Lcom/mh/movie/core/a/a/ah$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ah$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ah;->a(Lcom/mh/movie/core/a/a/ah$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ah$a;Lcom/mh/movie/core/a/a/ah$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ah;-><init>(Lcom/mh/movie/core/a/a/ah$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ah$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/ah$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ah$a;-><init>(Lcom/mh/movie/core/a/a/ah$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ah$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/ah$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ah$a;->a(Lcom/mh/movie/core/a/a/ah$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ah$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ah;->a:Lcom/mh/movie/core/a/a/ah$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ah$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ah$a;->a(Lcom/mh/movie/core/a/a/ah$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ah$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ah;->b:Lcom/mh/movie/core/a/a/ah$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/ah$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ah$a;->a(Lcom/mh/movie/core/a/a/ah$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ah$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ah;->c:Lcom/mh/movie/core/a/a/ah$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ah;->a:Lcom/mh/movie/core/a/a/ah$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ah;->b:Lcom/mh/movie/core/a/a/ah$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ah;->c:Lcom/mh/movie/core/a/a/ah$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/model/a;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/ui/model/a;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ah;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ah$a;->b(Lcom/mh/movie/core/a/a/ah$a;)Lcom/mh/movie/core/a/b/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ah;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/bg;->a(Lcom/mh/movie/core/a/b/bf;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/bg;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ah;->e:Ljavax/inject/Provider;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ah$a;->b(Lcom/mh/movie/core/a/a/ah$a;)Lcom/mh/movie/core/a/b/bf;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/mh/movie/core/a/b/bh;->a(Lcom/mh/movie/core/a/b/bf;)Lcom/mh/movie/core/a/b/bh;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ah;->f:Ljavax/inject/Provider;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/ah$g;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ah$a;->a(Lcom/mh/movie/core/a/a/ah$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ah$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ah;->g:Lcom/mh/movie/core/a/a/ah$g;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/ah$e;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ah$a;->a(Lcom/mh/movie/core/a/a/ah$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ah$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ah;->h:Lcom/mh/movie/core/a/a/ah$e;

    .line 81
    new-instance v0, Lcom/mh/movie/core/a/a/ah$b;

    .line 82
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ah$a;->a(Lcom/mh/movie/core/a/a/ah$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ah$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ah;->i:Lcom/mh/movie/core/a/a/ah$b;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ah;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ah;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ah;->g:Lcom/mh/movie/core/a/a/ah$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ah;->c:Lcom/mh/movie/core/a/a/ah$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ah;->h:Lcom/mh/movie/core/a/a/ah$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ah;->i:Lcom/mh/movie/core/a/a/ah$b;

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/at;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/at;

    move-result-object p1

    .line 84
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ah;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;)Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ah;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ah;->b(Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;)Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;

    return-void
.end method
