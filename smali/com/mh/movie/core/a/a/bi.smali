.class public final Lcom/mh/movie/core/a/a/bi;
.super Ljava/lang/Object;
.source "DaggerSetInvitationBindComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bi$b;,
        Lcom/mh/movie/core/a/a/bi$e;,
        Lcom/mh/movie/core/a/a/bi$g;,
        Lcom/mh/movie/core/a/a/bi$c;,
        Lcom/mh/movie/core/a/a/bi$d;,
        Lcom/mh/movie/core/a/a/bi$f;,
        Lcom/mh/movie/core/a/a/bi$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bi$f;

.field private b:Lcom/mh/movie/core/a/a/bi$d;

.field private c:Lcom/mh/movie/core/a/a/bi$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/SetInvitationBindModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ay$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ay$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bi$g;

.field private h:Lcom/mh/movie/core/a/a/bi$e;

.field private i:Lcom/mh/movie/core/a/a/bi$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bi$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bi;->a(Lcom/mh/movie/core/a/a/bi$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bi$a;Lcom/mh/movie/core/a/a/bi$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bi;-><init>(Lcom/mh/movie/core/a/a/bi$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bi$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bi$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bi$a;-><init>(Lcom/mh/movie/core/a/a/bi$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bi$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bi$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bi$a;->a(Lcom/mh/movie/core/a/a/bi$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bi$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bi;->a:Lcom/mh/movie/core/a/a/bi$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bi$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bi$a;->a(Lcom/mh/movie/core/a/a/bi$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bi$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bi;->b:Lcom/mh/movie/core/a/a/bi$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bi$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bi$a;->a(Lcom/mh/movie/core/a/a/bi$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bi$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bi;->c:Lcom/mh/movie/core/a/a/bi$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bi;->a:Lcom/mh/movie/core/a/a/bi$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bi;->b:Lcom/mh/movie/core/a/a/bi$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bi;->c:Lcom/mh/movie/core/a/a/bi$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/co;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/co;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bi;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bi$a;->b(Lcom/mh/movie/core/a/a/bi$a;)Lcom/mh/movie/core/a/b/ef;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bi;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/eg;->a(Lcom/mh/movie/core/a/b/ef;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/eg;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bi;->e:Ljavax/inject/Provider;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bi$a;->b(Lcom/mh/movie/core/a/a/bi$a;)Lcom/mh/movie/core/a/b/ef;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/mh/movie/core/a/b/eh;->a(Lcom/mh/movie/core/a/b/ef;)Lcom/mh/movie/core/a/b/eh;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bi;->f:Ljavax/inject/Provider;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/bi$g;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bi$a;->a(Lcom/mh/movie/core/a/a/bi$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bi$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bi;->g:Lcom/mh/movie/core/a/a/bi$g;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/bi$e;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bi$a;->a(Lcom/mh/movie/core/a/a/bi$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bi$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bi;->h:Lcom/mh/movie/core/a/a/bi$e;

    .line 81
    new-instance v0, Lcom/mh/movie/core/a/a/bi$b;

    .line 82
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bi$a;->a(Lcom/mh/movie/core/a/a/bi$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bi$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bi;->i:Lcom/mh/movie/core/a/a/bi$b;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bi;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bi;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bi;->g:Lcom/mh/movie/core/a/a/bi$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bi;->c:Lcom/mh/movie/core/a/a/bi$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bi;->h:Lcom/mh/movie/core/a/a/bi$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bi;->i:Lcom/mh/movie/core/a/a/bi$b;

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/cv;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/cv;

    move-result-object p1

    .line 84
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bi;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;)Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bi;->j:Ljavax/inject/Provider;

    .line 102
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    .line 101
    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bi;->b(Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;)Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;

    return-void
.end method
