.class public final Lcom/mh/movie/core/a/a/bb;
.super Ljava/lang/Object;
.source "DaggerQuestionStartComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bb$b;,
        Lcom/mh/movie/core/a/a/bb$e;,
        Lcom/mh/movie/core/a/a/bb$g;,
        Lcom/mh/movie/core/a/a/bb$c;,
        Lcom/mh/movie/core/a/a/bb$d;,
        Lcom/mh/movie/core/a/a/bb$f;,
        Lcom/mh/movie/core/a/a/bb$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bb$f;

.field private b:Lcom/mh/movie/core/a/a/bb$d;

.field private c:Lcom/mh/movie/core/a/a/bb$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/QuestionStartModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/aq$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/aq$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bb$g;

.field private h:Lcom/mh/movie/core/a/a/bb$e;

.field private i:Lcom/mh/movie/core/a/a/bb$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/QuestionStartPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bb$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bb;->a(Lcom/mh/movie/core/a/a/bb$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bb$a;Lcom/mh/movie/core/a/a/bb$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bb;-><init>(Lcom/mh/movie/core/a/a/bb$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bb$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bb$a;-><init>(Lcom/mh/movie/core/a/a/bb$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bb$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bb$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bb$a;->a(Lcom/mh/movie/core/a/a/bb$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bb$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bb;->a:Lcom/mh/movie/core/a/a/bb$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bb$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bb$a;->a(Lcom/mh/movie/core/a/a/bb$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bb$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bb;->b:Lcom/mh/movie/core/a/a/bb$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bb$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bb$a;->a(Lcom/mh/movie/core/a/a/bb$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bb$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bb;->c:Lcom/mh/movie/core/a/a/bb$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bb;->a:Lcom/mh/movie/core/a/a/bb$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bb;->b:Lcom/mh/movie/core/a/a/bb$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bb;->c:Lcom/mh/movie/core/a/a/bb$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/ca;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/ca;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bb;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bb$a;->b(Lcom/mh/movie/core/a/a/bb$a;)Lcom/mh/movie/core/a/b/dk;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bb;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/dl;->a(Lcom/mh/movie/core/a/b/dk;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/dl;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bb;->e:Ljavax/inject/Provider;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bb$a;->b(Lcom/mh/movie/core/a/a/bb$a;)Lcom/mh/movie/core/a/b/dk;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/mh/movie/core/a/b/dm;->a(Lcom/mh/movie/core/a/b/dk;)Lcom/mh/movie/core/a/b/dm;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bb;->f:Ljavax/inject/Provider;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/bb$g;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bb$a;->a(Lcom/mh/movie/core/a/a/bb$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bb$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bb;->g:Lcom/mh/movie/core/a/a/bb$g;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/bb$e;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bb$a;->a(Lcom/mh/movie/core/a/a/bb$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bb$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bb;->h:Lcom/mh/movie/core/a/a/bb$e;

    .line 81
    new-instance v0, Lcom/mh/movie/core/a/a/bb$b;

    .line 82
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bb$a;->a(Lcom/mh/movie/core/a/a/bb$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bb$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bb;->i:Lcom/mh/movie/core/a/a/bb$b;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bb;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bb;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bb;->g:Lcom/mh/movie/core/a/a/bb$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bb;->c:Lcom/mh/movie/core/a/a/bb$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bb;->h:Lcom/mh/movie/core/a/a/bb$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bb;->i:Lcom/mh/movie/core/a/a/bb$b;

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/ch;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/ch;

    move-result-object p1

    .line 84
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bb;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;)Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bb;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bb;->b(Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;)Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;

    return-void
.end method
