.class public final enum Lorg/fourthline/cling/support/messagebox/model/Message$Category;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/messagebox/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/messagebox/model/Message$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/messagebox/model/Message$Category;

.field public static final enum INCOMING_CALL:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

.field public static final enum SCHEDULE_REMINDER:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

.field public static final enum SMS:Lorg/fourthline/cling/support/messagebox/model/Message$Category;


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    const-string v1, "SMS"

    const-string v2, "SMS"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/fourthline/cling/support/messagebox/model/Message$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->SMS:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    .line 36
    new-instance v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    const-string v1, "INCOMING_CALL"

    const-string v2, "Incoming Call"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/support/messagebox/model/Message$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->INCOMING_CALL:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    .line 37
    new-instance v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    const-string v1, "SCHEDULE_REMINDER"

    const-string v2, "Schedule Reminder"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/fourthline/cling/support/messagebox/model/Message$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->SCHEDULE_REMINDER:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    sget-object v1, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->SMS:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->INCOMING_CALL:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->SCHEDULE_REMINDER:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    aput-object v1, v0, v5

    sput-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->$VALUES:[Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/messagebox/model/Message$Category;
    .locals 1

    .line 34
    const-class v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/messagebox/model/Message$Category;
    .locals 1

    .line 34
    sget-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->$VALUES:[Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/messagebox/model/Message$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    return-object v0
.end method
