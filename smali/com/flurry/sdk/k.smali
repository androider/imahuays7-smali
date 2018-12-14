.class public final Lcom/flurry/sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/flurry/sdk/k;

.field public static final b:Lcom/flurry/sdk/k;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/k;->c:Ljava/util/Map;

    .line 22
    new-instance v0, Lcom/flurry/sdk/k;

    const-string v1, "APP"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/k;->a:Lcom/flurry/sdk/k;

    .line 23
    new-instance v0, Lcom/flurry/sdk/k;

    const-string v1, "KILLSWITCH"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/k;->b:Lcom/flurry/sdk/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/flurry/sdk/k;->d:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/flurry/sdk/k;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/flurry/sdk/k;
    .locals 1

    .line 42
    sget-object v0, Lcom/flurry/sdk/k;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/flurry/sdk/k;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/k;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/flurry/sdk/k;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/k;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/flurry/sdk/k;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/flurry/sdk/k;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/flurry/sdk/k;->d:Ljava/lang/String;

    return-object v0
.end method
