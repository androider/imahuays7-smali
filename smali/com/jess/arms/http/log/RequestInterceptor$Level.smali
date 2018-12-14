.class public final enum Lcom/jess/arms/http/log/RequestInterceptor$Level;
.super Ljava/lang/Enum;
.source "RequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jess/arms/http/log/RequestInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jess/arms/http/log/RequestInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/jess/arms/http/log/RequestInterceptor$Level;

.field public static final enum NONE:Lcom/jess/arms/http/log/RequestInterceptor$Level;

.field public static final enum REQUEST:Lcom/jess/arms/http/log/RequestInterceptor$Level;

.field public static final enum RESPONSE:Lcom/jess/arms/http/log/RequestInterceptor$Level;

.field private static final synthetic a:[Lcom/jess/arms/http/log/RequestInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 67
    new-instance v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jess/arms/http/log/RequestInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;->NONE:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    .line 68
    new-instance v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;

    const-string v1, "REQUEST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/jess/arms/http/log/RequestInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;->REQUEST:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    .line 69
    new-instance v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;

    const-string v1, "RESPONSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/jess/arms/http/log/RequestInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;->RESPONSE:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    .line 70
    new-instance v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;

    const-string v1, "ALL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/jess/arms/http/log/RequestInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;->ALL:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    const/4 v0, 0x4

    .line 66
    new-array v0, v0, [Lcom/jess/arms/http/log/RequestInterceptor$Level;

    sget-object v1, Lcom/jess/arms/http/log/RequestInterceptor$Level;->NONE:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jess/arms/http/log/RequestInterceptor$Level;->REQUEST:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jess/arms/http/log/RequestInterceptor$Level;->RESPONSE:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jess/arms/http/log/RequestInterceptor$Level;->ALL:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;->a:[Lcom/jess/arms/http/log/RequestInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jess/arms/http/log/RequestInterceptor$Level;
    .locals 1

    .line 66
    const-class v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jess/arms/http/log/RequestInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/jess/arms/http/log/RequestInterceptor$Level;
    .locals 1

    .line 66
    sget-object v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;->a:[Lcom/jess/arms/http/log/RequestInterceptor$Level;

    invoke-virtual {v0}, [Lcom/jess/arms/http/log/RequestInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jess/arms/http/log/RequestInterceptor$Level;

    return-object v0
.end method
