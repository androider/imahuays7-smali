.class Lcom/umeng/commonsdk/statistics/c/b$a;
.super Ljava/lang/Object;
.source "StatTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/umeng/commonsdk/statistics/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/umeng/commonsdk/statistics/c/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/c/b;-><init>(Lcom/umeng/commonsdk/statistics/c/b$1;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/c/b$a;->a:Lcom/umeng/commonsdk/statistics/c/b;

    return-void
.end method
