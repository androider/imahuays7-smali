.class public Lcom/umeng/commonsdk/statistics/a/h$a;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/io/File;

.field private c:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, ".um"

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/umeng/commonsdk/statistics/a/h$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 81
    iput v0, p0, Lcom/umeng/commonsdk/statistics/a/h$a;->a:I

    .line 166
    new-instance v0, Lcom/umeng/commonsdk/statistics/a/h$a$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/a/h$a$1;-><init>(Lcom/umeng/commonsdk/statistics/a/h$a;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/a/h$a;->c:Ljava/io/FilenameFilter;

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/a/h$a;->b:Ljava/io/File;

    .line 90
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/a/h$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/a/h$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/a/h$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-void
.end method
