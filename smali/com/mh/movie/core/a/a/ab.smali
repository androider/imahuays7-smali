.class public final Lcom/mh/movie/core/a/a/ab;
.super Ljava/lang/Object;
.source "DaggerExperienceRecordComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ab$b;,
        Lcom/mh/movie/core/a/a/ab$e;,
        Lcom/mh/movie/core/a/a/ab$g;,
        Lcom/mh/movie/core/a/a/ab$c;,
        Lcom/mh/movie/core/a/a/ab$d;,
        Lcom/mh/movie/core/a/a/ab$f;,
        Lcom/mh/movie/core/a/a/ab$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ab$f;

.field private b:Lcom/mh/movie/core/a/a/ab$d;

.field private c:Lcom/mh/movie/core/a/a/ab$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/ExperienceRecordModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/p$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ab$g;

.field private h:Lcom/mh/movie/core/a/a/ab$e;

.field private i:Lcom/mh/movie/core/a/a/ab$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ab$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ab;->a(Lcom/mh/movie/core/a/a/ab$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ab$a;Lcom/mh/movie/core/a/a/ab$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ab;-><init>(Lcom/mh/movie/core/a/a/ab$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ab$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/ab$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ab$a;-><init>(Lcom/mh/movie/core/a/a/ab$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ab$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/ab$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ab$a;->a(Lcom/mh/movie/core/a/a/ab$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ab$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ab;->a:Lcom/mh/movie/core/a/a/ab$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ab$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ab$a;->a(Lcom/mh/movie/core/a/a/ab$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ab$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ab;->b:Lcom/mh/movie/core/a/a/ab$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/ab$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ab$a;->a(Lcom/mh/movie/core/a/a/ab$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ab$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ab;->c:Lcom/mh/movie/core/a/a/ab$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ab;->a:Lcom/mh/movie/core/a/a/ab$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ab;->b:Lcom/mh/movie/core/a/a/ab$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ab;->c:Lcom/mh/movie/core/a/a/ab$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/ae;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/ae;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ab;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ab$a;->b(Lcom/mh/movie/core/a/a/ab$a;)Lcom/mh/movie/core/a/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ab;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/ar;->a(Lcom/mh/movie/core/a/b/aq;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/ar;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ab;->e:Ljavax/inject/Provider;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ab$a;->b(Lcom/mh/movie/core/a/a/ab$a;)Lcom/mh/movie/core/a/b/aq;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/mh/movie/core/a/b/as;->a(Lcom/mh/movie/core/a/b/aq;)Lcom/mh/movie/core/a/b/as;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ab;->f:Ljavax/inject/Provider;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/ab$g;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ab$a;->a(Lcom/mh/movie/core/a/a/ab$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ab$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ab;->g:Lcom/mh/movie/core/a/a/ab$g;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/ab$e;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ab$a;->a(Lcom/mh/movie/core/a/a/ab$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ab$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ab;->h:Lcom/mh/movie/core/a/a/ab$e;

    .line 81
    new-instance v0, Lcom/mh/movie/core/a/a/ab$b;

    .line 82
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ab$a;->a(Lcom/mh/movie/core/a/a/ab$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ab$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ab;->i:Lcom/mh/movie/core/a/a/ab$b;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ab;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ab;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ab;->g:Lcom/mh/movie/core/a/a/ab$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ab;->c:Lcom/mh/movie/core/a/a/ab$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ab;->h:Lcom/mh/movie/core/a/a/ab$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ab;->i:Lcom/mh/movie/core/a/a/ab$b;

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/ah;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/ah;

    move-result-object p1

    .line 84
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ab;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;)Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ab;->j:Ljavax/inject/Provider;

    .line 102
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    .line 101
    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ab;->b(Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;)Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;

    return-void
.end method
