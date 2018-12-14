.class public Lmaster/flame/danmaku/danmaku/a/a/b;
.super Ljava/lang/Object;
.source "JSONSource.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/a/b<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONArray;

.field private b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/a/a/b;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input stream cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_0
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/a/a/b;->b:Ljava/io/InputStream;

    .line 38
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/a/a/b;->b:Ljava/io/InputStream;

    invoke-static {p1}, Lmaster/flame/danmaku/danmaku/c/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/a/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a/b;->a:Lorg/json/JSONArray;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 70
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a/b;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/c/b;->c(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a/b;->b:Ljava/io/InputStream;

    .line 72
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/a/a/b;->a:Lorg/json/JSONArray;

    return-void
.end method
