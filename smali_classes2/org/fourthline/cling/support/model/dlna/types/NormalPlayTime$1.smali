.class synthetic Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$1;
.super Ljava/lang/Object;
.source "NormalPlayTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 92
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->values()[Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$1;->$SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format:[I

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$1;->$SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format:[I

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->TIME:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
