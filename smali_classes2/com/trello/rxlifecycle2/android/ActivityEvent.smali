.class public final enum Lcom/trello/rxlifecycle2/android/ActivityEvent;
.super Ljava/lang/Enum;
.source "ActivityEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trello/rxlifecycle2/android/ActivityEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trello/rxlifecycle2/android/ActivityEvent;

.field public static final enum CREATE:Lcom/trello/rxlifecycle2/android/ActivityEvent;

.field public static final enum DESTROY:Lcom/trello/rxlifecycle2/android/ActivityEvent;

.field public static final enum PAUSE:Lcom/trello/rxlifecycle2/android/ActivityEvent;

.field public static final enum RESUME:Lcom/trello/rxlifecycle2/android/ActivityEvent;

.field public static final enum START:Lcom/trello/rxlifecycle2/android/ActivityEvent;

.field public static final enum STOP:Lcom/trello/rxlifecycle2/android/ActivityEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 22
    new-instance v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;

    const-string v1, "CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle2/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    .line 23
    new-instance v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;

    const-string v1, "START"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/trello/rxlifecycle2/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->START:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    .line 24
    new-instance v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;

    const-string v1, "RESUME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/trello/rxlifecycle2/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    .line 25
    new-instance v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;

    const-string v1, "PAUSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/trello/rxlifecycle2/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    .line 26
    new-instance v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;

    const-string v1, "STOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/trello/rxlifecycle2/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    .line 27
    new-instance v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;

    const-string v1, "DESTROY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/trello/rxlifecycle2/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    const/4 v0, 0x6

    .line 20
    new-array v0, v0, [Lcom/trello/rxlifecycle2/android/ActivityEvent;

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->START:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    aput-object v1, v0, v7

    sput-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->$VALUES:[Lcom/trello/rxlifecycle2/android/ActivityEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trello/rxlifecycle2/android/ActivityEvent;
    .locals 1

    .line 20
    const-class v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trello/rxlifecycle2/android/ActivityEvent;

    return-object p0
.end method

.method public static values()[Lcom/trello/rxlifecycle2/android/ActivityEvent;
    .locals 1

    .line 20
    sget-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->$VALUES:[Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {v0}, [Lcom/trello/rxlifecycle2/android/ActivityEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trello/rxlifecycle2/android/ActivityEvent;

    return-object v0
.end method
