.class public final enum Lcom/autonavi/xm/navigation/server/poi/GAdareaType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ADAREA_TYPE_CHINA:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

.field public static final enum ADAREA_TYPE_CITY:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

.field public static final enum ADAREA_TYPE_PROVINCE:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

.field public static final enum ADAREA_TYPE_TOWN:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

.field private static final synthetic a:[Lcom/autonavi/xm/navigation/server/poi/GAdareaType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    const-string v1, "ADAREA_TYPE_PROVINCE"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_PROVINCE:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    const-string v1, "ADAREA_TYPE_CITY"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CITY:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    const-string v1, "ADAREA_TYPE_TOWN"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_TOWN:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    const-string v1, "ADAREA_TYPE_CHINA"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CHINA:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_PROVINCE:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CITY:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_TOWN:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CHINA:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->a:[Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/poi/GAdareaType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/poi/GAdareaType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->a:[Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    return-object v0
.end method
