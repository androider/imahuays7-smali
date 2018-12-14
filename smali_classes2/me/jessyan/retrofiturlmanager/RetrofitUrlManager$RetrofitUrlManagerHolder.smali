.class Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$RetrofitUrlManagerHolder;
.super Ljava/lang/Object;
.source "RetrofitUrlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetrofitUrlManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 142
    new-instance v0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;-><init>(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;)V

    sput-object v0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$RetrofitUrlManagerHolder;->INSTANCE:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;
    .locals 1

    .line 141
    sget-object v0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$RetrofitUrlManagerHolder;->INSTANCE:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    return-object v0
.end method
