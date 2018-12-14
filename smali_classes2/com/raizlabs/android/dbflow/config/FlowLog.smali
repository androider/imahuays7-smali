.class public Lcom/raizlabs/android/dbflow/config/FlowLog;
.super Ljava/lang/Object;
.source "FlowLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/FlowLog$Level;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "FlowLog"

.field private static b:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog;->b:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog;->a:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/Throwable;)V
    .locals 2

    .line 87
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1, p1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .line 76
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->ordinal()I

    move-result p0

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog;->b:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
