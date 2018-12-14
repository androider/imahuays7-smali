.class final enum Lcom/raizlabs/android/dbflow/config/FlowLog$Level$2;
.super Lcom/raizlabs/android/dbflow/config/FlowLog$Level;
.source "FlowLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/FlowLog$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;-><init>(Ljava/lang/String;ILcom/raizlabs/android/dbflow/config/FlowLog$1;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 103
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
