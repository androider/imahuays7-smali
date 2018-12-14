.class public final Lcom/mh/movie/core/a/a/m;
.super Ljava/lang/Object;
.source "DaggerAccountCheckTypeComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/m$b;,
        Lcom/mh/movie/core/a/a/m$e;,
        Lcom/mh/movie/core/a/a/m$g;,
        Lcom/mh/movie/core/a/a/m$c;,
        Lcom/mh/movie/core/a/a/m$d;,
        Lcom/mh/movie/core/a/a/m$f;,
        Lcom/mh/movie/core/a/a/m$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/m$f;

.field private b:Lcom/mh/movie/core/a/a/m$d;

.field private c:Lcom/mh/movie/core/a/a/m$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/AccountCheckTypeModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/m$g;

.field private h:Lcom/mh/movie/core/a/a/m$e;

.field private i:Lcom/mh/movie/core/a/a/m$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/AccountCheckTypePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/m$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/m;->a(Lcom/mh/movie/core/a/a/m$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/m$a;Lcom/mh/movie/core/a/a/m$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/m;-><init>(Lcom/mh/movie/core/a/a/m$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/m$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/m$a;-><init>(Lcom/mh/movie/core/a/a/m$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/m$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/m$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/m$a;->a(Lcom/mh/movie/core/a/a/m$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/m$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/m;->a:Lcom/mh/movie/core/a/a/m$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/m$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/m$a;->a(Lcom/mh/movie/core/a/a/m$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/m$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/m;->b:Lcom/mh/movie/core/a/a/m$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/m$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/m$a;->a(Lcom/mh/movie/core/a/a/m$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/m$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/m;->c:Lcom/mh/movie/core/a/a/m$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/m;->a:Lcom/mh/movie/core/a/a/m$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/m;->b:Lcom/mh/movie/core/a/a/m$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/m;->c:Lcom/mh/movie/core/a/a/m$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/a;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/a;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/m;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/m$a;->b(Lcom/mh/movie/core/a/a/m$a;)Lcom/mh/movie/core/a/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/m;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/b;->a(Lcom/mh/movie/core/a/b/a;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/b;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/m;->e:Ljavax/inject/Provider;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/m$a;->b(Lcom/mh/movie/core/a/a/m$a;)Lcom/mh/movie/core/a/b/a;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/mh/movie/core/a/b/c;->a(Lcom/mh/movie/core/a/b/a;)Lcom/mh/movie/core/a/b/c;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/m;->f:Ljavax/inject/Provider;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/m$g;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/m$a;->a(Lcom/mh/movie/core/a/a/m$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/m$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/m;->g:Lcom/mh/movie/core/a/a/m$g;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/m$e;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/m$a;->a(Lcom/mh/movie/core/a/a/m$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/m$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/m;->h:Lcom/mh/movie/core/a/a/m$e;

    .line 81
    new-instance v0, Lcom/mh/movie/core/a/a/m$b;

    .line 82
    invoke-static {p1}, Lcom/mh/movie/core/a/a/m$a;->a(Lcom/mh/movie/core/a/a/m$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/m$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/m;->i:Lcom/mh/movie/core/a/a/m$b;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/a/a/m;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/m;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/m;->g:Lcom/mh/movie/core/a/a/m$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/m;->c:Lcom/mh/movie/core/a/a/m$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/m;->h:Lcom/mh/movie/core/a/a/m$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/m;->i:Lcom/mh/movie/core/a/a/m$b;

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/a;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/a;

    move-result-object p1

    .line 84
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/m;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;)Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/a/a/m;->j:Ljavax/inject/Provider;

    .line 102
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    .line 101
    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/m;->b(Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;)Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;

    return-void
.end method
