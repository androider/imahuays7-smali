.class final enum Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;
.super Ljava/lang/Enum;
.source "QuickLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

.field public static final enum b:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

.field private static final synthetic c:[Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    const-string v1, "PASSWORD_LOGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    .line 55
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    const-string v1, "QUICK_LOGIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->b:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->b:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->c:[Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;
    .locals 1

    .line 53
    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    return-object p0
.end method

.method public static values()[Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;
    .locals 1

    .line 53
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->c:[Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    invoke-virtual {v0}, [Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    return-object v0
.end method
