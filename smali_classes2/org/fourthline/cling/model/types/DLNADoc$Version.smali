.class public final enum Lorg/fourthline/cling/model/types/DLNADoc$Version;
.super Ljava/lang/Enum;
.source "DLNADoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/types/DLNADoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/types/DLNADoc$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/types/DLNADoc$Version;

.field public static final enum V1_0:Lorg/fourthline/cling/model/types/DLNADoc$Version;

.field public static final enum V1_5:Lorg/fourthline/cling/model/types/DLNADoc$Version;


# instance fields
.field s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;

    const-string v1, "V1_0"

    const-string v2, "1.00"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/fourthline/cling/model/types/DLNADoc$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->V1_0:Lorg/fourthline/cling/model/types/DLNADoc$Version;

    .line 36
    new-instance v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;

    const-string v1, "V1_5"

    const-string v2, "1.50"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/model/types/DLNADoc$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->V1_5:Lorg/fourthline/cling/model/types/DLNADoc$Version;

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [Lorg/fourthline/cling/model/types/DLNADoc$Version;

    sget-object v1, Lorg/fourthline/cling/model/types/DLNADoc$Version;->V1_0:Lorg/fourthline/cling/model/types/DLNADoc$Version;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/model/types/DLNADoc$Version;->V1_5:Lorg/fourthline/cling/model/types/DLNADoc$Version;

    aput-object v1, v0, v4

    sput-object v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->$VALUES:[Lorg/fourthline/cling/model/types/DLNADoc$Version;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->s:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DLNADoc$Version;
    .locals 1

    .line 34
    const-class v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/types/DLNADoc$Version;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/DLNADoc$Version;
    .locals 1

    .line 34
    sget-object v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->$VALUES:[Lorg/fourthline/cling/model/types/DLNADoc$Version;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/types/DLNADoc$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/DLNADoc$Version;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->s:Ljava/lang/String;

    return-object v0
.end method
