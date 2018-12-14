.class public Lcom/mh/movie/core/mvp/ui/adapter/player/c;
.super Lmaster/flame/danmaku/danmaku/model/android/b$a;
.source "DanamakuAdapter.java"


# instance fields
.field private a:Lmaster/flame/danmaku/a/f;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/a/f;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/b$a;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/c;->a:Lmaster/flame/danmaku/a/f;

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 0

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;Z)V
    .locals 0

    .line 39
    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    instance-of p1, p1, Landroid/text/Spanned;

    return-void
.end method
