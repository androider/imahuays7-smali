.class public final enum Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;
.super Ljava/lang/Enum;
.source "AppBarStateChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLLAPSED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

.field public static final enum EXPANDED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

.field public static final enum IDLE:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

.field public static final enum SCROLL:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

.field private static final synthetic a:[Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->EXPANDED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    .line 10
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    const-string v1, "COLLAPSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    .line 11
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    const-string v1, "IDLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->IDLE:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    .line 12
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    const-string v1, "SCROLL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->SCROLL:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->EXPANDED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->IDLE:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->SCROLL:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->a:[Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;
    .locals 1

    .line 8
    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    return-object p0
.end method

.method public static values()[Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;
    .locals 1

    .line 8
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->a:[Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    invoke-virtual {v0}, [Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    return-object v0
.end method
