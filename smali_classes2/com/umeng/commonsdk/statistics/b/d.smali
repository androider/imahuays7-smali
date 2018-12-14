.class public Lcom/umeng/commonsdk/statistics/b/d;
.super Lcom/umeng/commonsdk/statistics/b/c;
.source "AndroidIdTracker.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "android_id"

    .line 18
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/b/c;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/b/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
