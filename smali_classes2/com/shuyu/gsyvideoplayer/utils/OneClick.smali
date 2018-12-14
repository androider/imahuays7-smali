.class public Lcom/shuyu/gsyvideoplayer/utils/OneClick;
.super Ljava/lang/Object;
.source "OneClick.java"


# static fields
.field private static final CLICK_DELAY_TIME:I = 0x3e8


# instance fields
.field private lastClickTime:J

.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OneClick;->lastClickTime:J

    .line 12
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OneClick;->methodName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 7

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 21
    iget-wide v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OneClick;->lastClickTime:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 22
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OneClick;->lastClickTime:J

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OneClick;->methodName:Ljava/lang/String;

    return-object v0
.end method
