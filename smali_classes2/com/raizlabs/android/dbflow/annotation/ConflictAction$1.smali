.class synthetic Lcom/raizlabs/android/dbflow/annotation/ConflictAction$1;
.super Ljava/lang/Object;
.source "ConflictAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    invoke-static {}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->values()[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction$1;->a:[I

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction$1;->a:[I

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction$1;->a:[I

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction$1;->a:[I

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction$1;->a:[I

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
