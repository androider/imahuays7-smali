.class Lcom/umeng/commonsdk/statistics/c/d$a;
.super Ljava/lang/Object;
.source "HeaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/commonsdk/statistics/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/umeng/commonsdk/statistics/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/c/d;-><init>(Lcom/umeng/commonsdk/statistics/c/d$1;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/c/d$a;->a:Lcom/umeng/commonsdk/statistics/c/d;

    return-void
.end method

.method static synthetic a()Lcom/umeng/commonsdk/statistics/c/d;
    .locals 1

    .line 32
    sget-object v0, Lcom/umeng/commonsdk/statistics/c/d$a;->a:Lcom/umeng/commonsdk/statistics/c/d;

    return-object v0
.end method
