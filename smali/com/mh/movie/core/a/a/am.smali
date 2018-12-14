.class public final Lcom/mh/movie/core/a/a/am;
.super Ljava/lang/Object;
.source "DaggerMessageComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/ck;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/am$b;,
        Lcom/mh/movie/core/a/a/am$e;,
        Lcom/mh/movie/core/a/a/am$g;,
        Lcom/mh/movie/core/a/a/am$c;,
        Lcom/mh/movie/core/a/a/am$d;,
        Lcom/mh/movie/core/a/a/am$f;,
        Lcom/mh/movie/core/a/a/am$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/am$f;

.field private b:Lcom/mh/movie/core/a/a/am$d;

.field private c:Lcom/mh/movie/core/a/a/am$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/MessageModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/z$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/z$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/am$g;

.field private h:Lcom/mh/movie/core/a/a/am$e;

.field private i:Lcom/mh/movie/core/a/a/am$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/MessagePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/am$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/am;->a(Lcom/mh/movie/core/a/a/am$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/am$a;Lcom/mh/movie/core/a/a/am$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/am;-><init>(Lcom/mh/movie/core/a/a/am$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/am$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/am$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/am$a;-><init>(Lcom/mh/movie/core/a/a/am$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/am$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/am$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/am$a;->a(Lcom/mh/movie/core/a/a/am$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/am$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/am;->a:Lcom/mh/movie/core/a/a/am$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/am$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/am$a;->a(Lcom/mh/movie/core/a/a/am$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/am$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/am;->b:Lcom/mh/movie/core/a/a/am$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/am$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/am$a;->a(Lcom/mh/movie/core/a/a/am$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/am$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/am;->c:Lcom/mh/movie/core/a/a/am$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/am;->a:Lcom/mh/movie/core/a/a/am$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/am;->b:Lcom/mh/movie/core/a/a/am$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/am;->c:Lcom/mh/movie/core/a/a/am$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/aw;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/aw;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/am;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/am$a;->b(Lcom/mh/movie/core/a/a/am$a;)Lcom/mh/movie/core/a/b/br;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/am;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/bs;->a(Lcom/mh/movie/core/a/b/br;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/bs;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/am;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/am$a;->b(Lcom/mh/movie/core/a/a/am$a;)Lcom/mh/movie/core/a/b/br;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/bt;->a(Lcom/mh/movie/core/a/b/br;)Lcom/mh/movie/core/a/b/bt;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/am;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/am$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/am$a;->a(Lcom/mh/movie/core/a/a/am$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/am$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/am;->g:Lcom/mh/movie/core/a/a/am$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/am$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/am$a;->a(Lcom/mh/movie/core/a/a/am$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/am$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/am;->h:Lcom/mh/movie/core/a/a/am$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/am$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/am$a;->a(Lcom/mh/movie/core/a/a/am$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/am$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/am;->i:Lcom/mh/movie/core/a/a/am$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/am;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/am;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/am;->g:Lcom/mh/movie/core/a/a/am$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/am;->c:Lcom/mh/movie/core/a/a/am$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/am;->h:Lcom/mh/movie/core/a/a/am$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/am;->i:Lcom/mh/movie/core/a/a/am$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/bd;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/bd;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/am;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;)Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/am;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/am;->b(Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;)Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    return-void
.end method
