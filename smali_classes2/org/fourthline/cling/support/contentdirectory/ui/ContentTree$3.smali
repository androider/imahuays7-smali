.class synthetic Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$3;
.super Ljava/lang/Object;
.source "ContentTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$fourthline$cling$support$contentdirectory$callback$Browse$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;->values()[Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$3;->$SwitchMap$org$fourthline$cling$support$contentdirectory$callback$Browse$Status:[I

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$3;->$SwitchMap$org$fourthline$cling$support$contentdirectory$callback$Browse$Status:[I

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;->LOADING:Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTree$3;->$SwitchMap$org$fourthline$cling$support$contentdirectory$callback$Browse$Status:[I

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;->NO_CONTENT:Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
