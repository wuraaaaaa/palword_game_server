@echo off  
set "command=%1"  
set "rcon_command=docker compose run --rm rcon"  
  
if "%command%"=="/help" (  
    echo "/Shutdown {Seconds} {MessageText}	The server is shut down after the number of Seconds Will be notified of your MessageText.|| ��������������֮��رգ�������Ϣ�ı�����֪ͨ��"
    echo "/DoExit	Force stop the server.|| ǿ��ֹͣ��������"
    echo "/Broadcast {MessageText}	Send message to all player in the server. || ��������е�������ҷ�����Ϣ��"
    echo "/KickPlayer {SteamID}	Kick player from the server. || ����Ҵӷ��������߳���"
    echo "/BanPlayer {SteamID}	BAN player from the server. || ����Ҵӷ������з����"
    echo "/TeleportToPlayer {SteamID}	Teleport to current location of target player. || ���͵�Ŀ����ҵĵ�ǰλ�á�"
    echo "/TeleportToMe {SteamID}	Target player teleport to your current location || Ŀ����Ҵ��������ĵ�ǰλ�á�"
    echo "/ShowPlayers	Show information on all connected players. || ��ʾ���������ӵ������Ϣ��"
    echo "/Info	Show server information. || ��ʾ��������Ϣ��"
    echo "/Save	Save the world data. || �����������ݡ�"
    exit /b 1  
) else (  
    %rcon_command% %command% 

)