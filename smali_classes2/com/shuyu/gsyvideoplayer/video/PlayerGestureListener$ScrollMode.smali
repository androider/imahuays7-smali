.class final enum Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;
.super Ljava/lang/Enum;
.source "PlayerGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScrollMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

.field public static final enum DOUBLE_CLICK:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

.field public static final enum HORIZONTAL_S:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

.field public static final enum LEFT_TB:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

.field public static final enum NONE:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

.field public static final enum RIGHT_TB:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

.field public static final enum SINGLE_CLICK:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 229
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->NONE:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    .line 230
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    const-string v1, "LEFT_TB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->LEFT_TB:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    .line 231
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    const-string v1, "RIGHT_TB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->RIGHT_TB:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    .line 232
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    const-string v1, "HORIZONTAL_S"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->HORIZONTAL_S:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    .line 233
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    const-string v1, "SINGLE_CLICK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->SINGLE_CLICK:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    .line 234
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    const-string v1, "DOUBLE_CLICK"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->DOUBLE_CLICK:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    const/4 v0, 0x6

    .line 228
    new-array v0, v0, [Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    sget-object v1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->NONE:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->LEFT_TB:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->RIGHT_TB:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->HORIZONTAL_S:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->SINGLE_CLICK:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->DOUBLE_CLICK:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->$VALUES:[Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;
    .locals 1

    .line 228
    const-class v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    return-object p0
.end method

.method public static values()[Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;
    .locals 1

    .line 228
    sget-object v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->$VALUES:[Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    invoke-virtual {v0}, [Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    return-object v0
.end method
