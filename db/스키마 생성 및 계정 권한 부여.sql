SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- 1. 4대 영역 스키마 생성 (utf8mb4_unicode_ci)
CREATE DATABASE IF NOT EXISTS `goods_db`
    DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_unicode_ci;

CREATE DATABASE IF NOT EXISTS `construction_db`
    DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_unicode_ci;

CREATE DATABASE IF NOT EXISTS `service_db`
    DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_unicode_ci;

CREATE DATABASE IF NOT EXISTS `foreign_db`
    DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_unicode_ci;

SELECT user, host FROM mysql.user;

-- 2. 등록 사용자/팀원 계정 접근 권한 부여 (예: 'acorn'@'%' 또는 등록된 사용자 계정)
-- 특정 팀원 계정에 4개 DB 전체 권한 부여 구문 예시:
GRANT ALL PRIVILEGES ON `goods_db`.* TO 'dawoon'@'%';
GRANT ALL PRIVILEGES ON `construction_db`.* TO 'dawoon'@'%';
GRANT ALL PRIVILEGES ON `service_db`.* TO 'dawoon'@'%';
GRANT ALL PRIVILEGES ON `foreign_db`.* TO 'dawoon'@'%';

-- 모든 외부 접속 사용자(%)에게 권한을 부여하는 경우 (필요 시 주석 해제)
GRANT ALL PRIVILEGES ON `goods_db`.* TO 'leegyeol'@'%';
GRANT ALL PRIVILEGES ON `construction_db`.* TO 'leegyeol'@'%';
GRANT ALL PRIVILEGES ON `service_db`.* TO 'leegyeol'@'%';
GRANT ALL PRIVILEGES ON `foreign_db`.* TO 'leegyeol'@'%';

-- 모든 외부 접속 사용자(%)에게 권한을 부여하는 경우 (필요 시 주석 해제)
GRANT ALL PRIVILEGES ON `goods_db`.* TO 'yejin'@'%';
GRANT ALL PRIVILEGES ON `construction_db`.* TO 'yejin'@'%';
GRANT ALL PRIVILEGES ON `service_db`.* TO 'yejin'@'%';
GRANT ALL PRIVILEGES ON `foreign_db`.* TO 'yejin'@'%';

FLUSH PRIVILEGES;

-- 3. 생성된 스키마 목록 확인
SHOW DATABASES;