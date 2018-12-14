.class public Lcom/umeng/commonsdk/statistics/b/e;
.super Lcom/umeng/commonsdk/statistics/b/c;
.source "IDFATracker.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "idfa"

    .line 14
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/b/c;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/b/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
