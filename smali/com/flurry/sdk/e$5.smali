.class public final synthetic Lcom/flurry/sdk/e$5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 307
    invoke-static {}, Lcom/flurry/sdk/e$a;->values()[Lcom/flurry/sdk/e$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/flurry/sdk/e$5;->a:[I

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/e$5;->a:[I

    sget-object v1, Lcom/flurry/sdk/e$a;->d:Lcom/flurry/sdk/e$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/e$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/e$5;->a:[I

    sget-object v1, Lcom/flurry/sdk/e$a;->a:Lcom/flurry/sdk/e$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/e$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/e$5;->a:[I

    sget-object v1, Lcom/flurry/sdk/e$a;->b:Lcom/flurry/sdk/e$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/e$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/flurry/sdk/e$5;->a:[I

    sget-object v1, Lcom/flurry/sdk/e$a;->c:Lcom/flurry/sdk/e$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/e$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
