.class public final enum Lcom/flurry/android/FlurryEventRecordStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/android/FlurryEventRecordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventLoggingDelayed:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

.field public static final enum kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5
    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventFailed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 6
    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventRecorded"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 7
    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventUniqueCountExceeded"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 8
    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventParamsCountExceeded"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 9
    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventLogCountExceeded"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 10
    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventLoggingDelayed"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLoggingDelayed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 11
    new-instance v0, Lcom/flurry/android/FlurryEventRecordStatus;

    const-string v1, "kFlurryEventAnalyticsDisabled"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/flurry/android/FlurryEventRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

    const/4 v0, 0x7

    .line 4
    new-array v0, v0, [Lcom/flurry/android/FlurryEventRecordStatus;

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLoggingDelayed:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

    aput-object v1, v0, v8

    sput-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->a:[Lcom/flurry/android/FlurryEventRecordStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    .line 4
    const-class v0, Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/FlurryEventRecordStatus;

    return-object p0
.end method

.method public static values()[Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    .line 4
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->a:[Lcom/flurry/android/FlurryEventRecordStatus;

    invoke-virtual {v0}, [Lcom/flurry/android/FlurryEventRecordStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/FlurryEventRecordStatus;

    return-object v0
.end method
