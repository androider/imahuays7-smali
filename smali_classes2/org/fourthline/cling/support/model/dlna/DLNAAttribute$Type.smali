.class public final enum Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
.super Ljava/lang/Enum;
.source "DLNAAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_CI:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_FLAGS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_OP:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_PS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 47
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const-string v1, "DLNA_ORG_PN"

    const-string v2, "DLNA.ORG_PN"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v6, v2, v4}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 48
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const-string v1, "DLNA_ORG_OP"

    const-string v2, "DLNA.ORG_OP"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/DLNAOperationsAttribute;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_OP:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 49
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const-string v1, "DLNA_ORG_PS"

    const-string v2, "DLNA.ORG_PS"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 50
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const-string v1, "DLNA_ORG_CI"

    const-string v2, "DLNA.ORG_CI"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v7, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;

    aput-object v7, v4, v6

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v4}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_CI:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 51
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const-string v1, "DLNA_ORG_FLAGS"

    const-string v2, "DLNA.ORG_FLAGS"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v8, Lorg/fourthline/cling/support/model/dlna/DLNAFlagsAttribute;

    aput-object v8, v4, v6

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v4}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_FLAGS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const/4 v0, 0x5

    .line 42
    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_OP:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_CI:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_FLAGS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v1, v0, v8

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 53
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type$1;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->byName:Ljava/util/Map;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeName:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeTypes:[Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
    .locals 1

    .line 42
    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    return-object p0
.end method

.method public static valueOfAttributeName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->byName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
    .locals 1

    .line 42
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    return-object v0
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeTypes:[Ljava/lang/Class;

    return-object v0
.end method
