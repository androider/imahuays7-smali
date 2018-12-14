.class public final enum Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;
.super Ljava/lang/Enum;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/binding/xml/Descriptor$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ATTRIBUTE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

.field public static final enum sendEvents:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    new-instance v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    const-string v1, "sendEvents"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    const/4 v0, 0x1

    .line 100
    new-array v0, v0, [Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    aput-object v1, v0, v2

    sput-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->$VALUES:[Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;
    .locals 1

    .line 100
    const-class v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;
    .locals 1

    .line 100
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->$VALUES:[Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v0}, [Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    return-object v0
.end method
