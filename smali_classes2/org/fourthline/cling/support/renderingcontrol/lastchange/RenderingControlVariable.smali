.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.super Ljava/lang/Object;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Loudness;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Volume;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$VolumeDB;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Mute;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$VerticalKeystone;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$HorizontalKeystone;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$ColorTemperature;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$GreenVideoBlackLevel;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$BlueVideoBlackLevel;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$RedVideoBlackLevel;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$GreenVideoGain;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$BlueVideoGain;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$RedVideoGain;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Sharpness;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Contrast;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Brightness;,
        Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$PresetNameList;
    }
.end annotation


# static fields
.field public static ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$1;

    invoke-direct {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable;->ALL:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
