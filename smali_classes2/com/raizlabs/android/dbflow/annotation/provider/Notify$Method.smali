.class public final enum Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;
.super Ljava/lang/Enum;
.source "Notify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/annotation/provider/Notify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

.field public static final enum INSERT:Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

.field public static final enum UPDATE:Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

.field private static final synthetic a:[Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    const-string v1, "INSERT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;->INSERT:Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    .line 19
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    const-string v1, "UPDATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;->UPDATE:Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    .line 20
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    const-string v1, "DELETE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;->DELETE:Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    const/4 v0, 0x3

    .line 17
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;->INSERT:Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;->UPDATE:Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;->DELETE:Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    aput-object v1, v0, v4

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;->a:[Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;
    .locals 1

    .line 17
    const-class v0, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;
    .locals 1

    .line 17
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;->a:[Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/annotation/provider/Notify$Method;

    return-object v0
.end method
