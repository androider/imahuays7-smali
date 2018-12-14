.class public Lcom/umeng/commonsdk/statistics/b/j;
.super Lcom/umeng/commonsdk/statistics/b/c;
.source "NewUMIDTracker.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newumid"

    .line 19
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/b/c;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/b/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/j;->a:Landroid/content/Context;

    const-string v1, "umid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
