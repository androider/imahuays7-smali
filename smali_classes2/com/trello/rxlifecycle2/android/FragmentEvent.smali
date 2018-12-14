.class public final enum Lcom/trello/rxlifecycle2/android/FragmentEvent;
.super Ljava/lang/Enum;
.source "FragmentEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trello/rxlifecycle2/android/FragmentEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trello/rxlifecycle2/android/FragmentEvent;

.field public static final enum ATTACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

.field public static final enum CREATE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

.field public static final enum CREATE_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

.field public static final enum DESTROY:Lcom/trello/rxlifecycle2/android/FragmentEvent;

.field public static final enum DESTROY_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

.field public static final enum DETACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

.field public static final enum PAUSE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

.field public static final enum RESUME:Lcom/trello/rxlifecycle2/android/FragmentEvent;

.field public static final enum START:Lcom/trello/rxlifecycle2/android/FragmentEvent;

.field public static final enum STOP:Lcom/trello/rxlifecycle2/android/FragmentEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 22
    new-instance v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const-string v1, "ATTACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle2/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ATTACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    .line 23
    new-instance v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const-string v1, "CREATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/trello/rxlifecycle2/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->CREATE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    .line 24
    new-instance v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const-string v1, "CREATE_VIEW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/trello/rxlifecycle2/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->CREATE_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    .line 25
    new-instance v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const-string v1, "START"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/trello/rxlifecycle2/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->START:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    .line 26
    new-instance v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const-string v1, "RESUME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/trello/rxlifecycle2/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->RESUME:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    .line 27
    new-instance v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const-string v1, "PAUSE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/trello/rxlifecycle2/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    .line 28
    new-instance v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const-string v1, "STOP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/trello/rxlifecycle2/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->STOP:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    .line 29
    new-instance v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const-string v1, "DESTROY_VIEW"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/trello/rxlifecycle2/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    .line 30
    new-instance v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const-string v1, "DESTROY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/trello/rxlifecycle2/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    .line 31
    new-instance v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const-string v1, "DETACH"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/trello/rxlifecycle2/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    const/16 v0, 0xa

    .line 20
    new-array v0, v0, [Lcom/trello/rxlifecycle2/android/FragmentEvent;

    sget-object v1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ATTACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->CREATE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->CREATE_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->START:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->RESUME:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->STOP:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    aput-object v1, v0, v9

    sget-object v1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    aput-object v1, v0, v10

    sget-object v1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    aput-object v1, v0, v11

    sput-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->$VALUES:[Lcom/trello/rxlifecycle2/android/FragmentEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/trello/rxlifecycle2/android/FragmentEvent;
    .locals 1

    .line 20
    const-class v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object p0
.end method

.method public static values()[Lcom/trello/rxlifecycle2/android/FragmentEvent;
    .locals 1

    .line 20
    sget-object v0, Lcom/trello/rxlifecycle2/android/FragmentEvent;->$VALUES:[Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v0}, [Lcom/trello/rxlifecycle2/android/FragmentEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object v0
.end method
