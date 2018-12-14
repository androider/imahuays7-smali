.class public Lcom/flurry/sdk/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bq$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "bq"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bm;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bq;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/bq;J)J
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/flurry/sdk/bq;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/bq;)Ljava/util/List;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/flurry/sdk/bq;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/bq;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/flurry/sdk/bq;->b:Z

    return p1
.end method
